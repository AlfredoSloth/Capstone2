using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class TurnController : MonoBehaviour {
	public static GameObject[,] rovers;
	//turn properties
	public static TurnSystem turn;
	private int moveCount; //counter for number of available moves during current turn
	public int turnNum;
	//notifications for testing purpose
	GameObject bipanel, bitext;
	public GUIText warningMessage;
	
	//checks in the turn for rovers
	public int maxMoves = 2; //max number of moves during a turn
	public int distance = 1; //the number of grids available for each move in all directions
	public int turnsSinceRandomEvent;
	public bool playerHad3Bases;
	
	struct BoolCheck{
		public string name;
		public bool hasBuilding;
		public BoolCheck(string name, bool hasBuilding){
			this.name = name;
			this.hasBuilding = hasBuilding;
		}
	}
	
	// Use this for initialization
	void Start () {
		if (turnNum == 0)
			turnNum = 1;
		turn = new TurnSystem (turnNum);
		Debug.Log ("Turn number: " + turn.getTurnNum());
		moveCount = 0;
		//Find the UI objects
		bipanel = GameObject.Find ("TopPanel");
		bitext = GameObject.Find ("TurnCountText");

		turnStats ();
		hideMessage(warningMessage);
		rovers = new GameObject[TGMap.size_x,TGMap.size_z];
		turnsSinceRandomEvent = 0;
		playerHad3Bases = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	//end current turn and increment turn counter by 1 when clicked End Turn button
	public void EndTurn(){
		turn.incrementTurnNum();
		if (turn.getTurnNum () == 2) {
			PlayerInfo.insertStarterBuildings (PlayerInfo.firstBase, PlayerInfo.firstFarm, PlayerInfo.firstBeacon, PlayerInfo.firstPowerPlant, PlayerInfo.firstWarehouse, PlayerInfo.firstRover, PlayerInfo.rover);
		}
		turnStats ();
		
		handleWarehouses ();
		handlePopulation ();
		handleWorking ();
		handlePower ();
		handleUpgrade ();
		handleSafezones ();
		handleConstruction ();
		handleResearch ();
		handleWaterGathering ();
		handleBuildingResourceGathering ();
		handleFoodGathering ();
		handleMagnetosphere ();
		handleOxygenLevel ();
		handleTemperature ();
		handleHelpSupportSystem (turn.getTurnNum());
		handleTerraforming ();
		handleRandomEvents ();
		turnNum++;
		//moveCount = 0;
		
	}

	void turnStats(){
		bitext.GetComponent<Text> ().text = turn.turnStats ();
	}
	
	//setting GUIText to empty string to hide it
	void hideMessage(GUIText message){
		message.text = "";
	}
	
	//remove the building from the constructing list if its turnsToBuild == 0
	//otherwise decrement turnsToBuild
	void handleConstruction(){
		int index = 0;
		foreach (Building constructing in PlayerInfo.player.getConstructing().ToArray()){
			//check turnsToBuild for each building in the constructing list
			int turnsLeft = constructing.getTurnsToBuild();
			Debug.Log("turns left: " + turnsLeft);
			if(turnsLeft == 0){
				//check building type
				if(constructing is Powerplant){
					Debug.Log("type: power plant");
					Powerplant plant = constructing as Powerplant;
					plant.powerUp();
					Debug.Log ("plant powered: " + plant.getPowered());
				}
				PlayerInfo.player.removeConstructing(index);
				Debug.Log ("After remove: " + PlayerInfo.player.getConstructing().Count);
			}else{
				turnsLeft--;
				constructing.updateTurns(turnsLeft);
				//Debug.Log ("turns left after decr:" + constructing.getTurnsToBuild());
				index++;
			}
		}
	}

	void handleUpgrade(){
		int index = 0;
		foreach (Building upgrading in PlayerInfo.player.getUpgrading().ToArray()) {
			//check turnsToBuild for each building in the constructing list
			int turnsLeft = upgrading.getTurnsToUpgrade ();
			Debug.Log ("turns left: " + turnsLeft);
			if (turnsLeft != 0) {
				turnsLeft--;
				upgrading.updateTurnsToUpgrade(turnsLeft);
				//Debug.Log ("turns left after decr:" + constructing.getTurnsToBuild());
				if (turnsLeft == 0) {
					upgrading.updateStatus ("Constructed");
					PlayerInfo.player.removeUpgrading (index);
					Debug.Log ("After remove: " + PlayerInfo.player.getConstructing ().Count);
				}
				index++;
			}
		}
	}

	void handlePopulation(){
		foreach (Base base1 in PlayerInfo.player.getBases().ToArray()) {
			if(base1.getTurnsToBuild() == 0){
				if(base1.getSupplier() == null){
					base1.updatePopulation(base1.getPopulation()-1);
				}
			}else if(base1.getTurnsFed () == 3){
				base1.updatePopulation (base1.getPopulation()+1);
				base1.updateTurnsFed (0);
			}
		}
	}
	void handleWorking(){
		foreach (Base base1 in PlayerInfo.player.getBases().ToArray()) {
			if(base1.getTurnsToBuild() == 0)
				base1.workTiles();
		}
	}
	void handleWarehouses(){
		foreach (Warehouse warehouse in PlayerInfo.player.getWarehouses().ToArray()) {
			//if warehouse is done constructing
			if(warehouse.getTurnsToBuild() == 0&&warehouse.getWorked()==true&&warehouse.getPowered()==1){
				if (warehouse.getSupplying () == null) {
					warehouse.supplyBase ();
				} else {				
					warehouse.feed ();
				}
			}
		}
	}

	void handleSafezones(){
		foreach (Beacon beacon in PlayerInfo.player.getBeacons().ToArray()) {
			if(beacon.getTurnsToBuild() == 0){
				beacon.createSafeZones();
			}
		}
	}

	void handlePower(){
		int powered;
		foreach (Powerplant plant in PlayerInfo.player.getPowerplant()) {
			if(plant.getTurnsToBuild() == 0&&plant.getTurnsTilEnable()==0&&plant.getWorked()==true){
				//check if plant is powered on to power buildings around it
				plant.powerUp();
			}
			else if(plant.getTurnsTilEnable()>=1){
				plant.updateTurnsTilEnable(plant.getTurnsTilEnable()-1);
			}
		}
	}

	void handleMagnetosphere(){
		/*so for the magnetosphere machine, after the countdown reaches 0 then you will call the update method for the 
		*marsHasMagnetosphere attribute and change it to true.   countdown should begin the turn after it's built*/
		int powered;
		int countdown;
		//loop through PlayerInfo.player.magnetospheres list; machine = one magnetospheres element
		foreach (Magnetosphere machine in PlayerInfo.player.getMagnetosphere()) {
			//check if machine is powered on to start or continue countdown to turn on the machine
			powered = machine.getPowered();
			Debug.Log("powered: " + powered);
			if(powered == 1&&machine.getWorked()==true&&machine.getTurnsToBuild()==0){
				//checks magnetosphere countdown
				countdown = machine.getTurnsToTurnOnMagnetosphere();
				Debug.Log ("countdown: " + countdown);
				if(countdown == 0){
					PlayerInfo.mars.updateMarsHasMegnetosphere(true);
					Debug.Log ("on/off: " + PlayerInfo.mars.getMarsHasMegnetosphere());
				}else{
					machine.decrementTurnsToTurnOnMagnetosphere();
				}
			}
		}
		
	}

	void handleResearch(){
		//Debug.Log ("Labs gathing research "+PlayerInfo.player.getResearchlabs().Count);
		foreach (ResearchLab lab in PlayerInfo.player.getResearchlabs()) {
			if(lab.getPowered()==1&&lab.getWorked()==true&&lab.getTurnsToBuild()==0){
				PlayerInfo.player.updateResearch(lab.getResearchAmount());
			}
			//Debug.Log (PlayerInfo.player.getResearch());
			//Debug.Log (lab.getResearchAmount());
		}
	}
	void handleFoodGathering(){
		foreach (Farm farm in PlayerInfo.player.getFarms()) {
			if(farm.getPowered()==1&&farm.getWorked()==true&&farm.getTurnsToBuild()==0)
				PlayerInfo.player.updateFood(farm.getGatherFoodAmount());
			//Debug.Log (PlayerInfo.player.getFood());
		}
	}
	void handleWaterGathering(){
		//Debug.Log ("Bases gathing water "+PlayerInfo.player.getBases().Count);
		foreach (Base specificBase in PlayerInfo.player.getBases()) {
			if(specificBase.getTurnsToBuild()==0&&specificBase.getPowered()==1){
				PlayerInfo.player.updateWater(specificBase.gatherWater());
			}
			//Debug.Log (PlayerInfo.player.getWater());
		}
	}
	void handleBuildingResourceGathering(){
		Debug.Log ("Bases gathing building resources "+PlayerInfo.player.getBases().Count);
		foreach (Base specificBase in PlayerInfo.player.getBases()) {
			if(specificBase.getTurnsToBuild()==0&&specificBase.getPowered()==1){
				PlayerInfo.player.updateBuildingResources(specificBase.gatherBuildingResources());
			}
		}
	}

	void handleOxygenLevel (){
		/*A certain number that the release amount for the two factory types must reach to achieve the goal of 
		 * terraforming (which would mean you’d have to track the total amount of PFCs and Phytoplankton in the 
		 * turn controller via the player object or simply inside the turn controller). */
		float oxygenLevel;
		int powered;
		//loop through PlayerInfo.player.factories list; factory = one factories element
		foreach (ChemistryPlant factory in PlayerInfo.player.getChemistryPlants()) {
			//check mars oxygen level
			oxygenLevel = PlayerInfo.mars.getMarsOxygen();
			if(oxygenLevel < 0.21f&&factory.getTurnsToBuild()==0&&factory.getPowered()==1){
				//check if factory is powered on to release
				powered = factory.getPowered();
				if(powered == 1){
					oxygenLevel = oxygenLevel + factory.getReleaseAmount();
					PlayerInfo.mars.updateMarsOxygen(oxygenLevel);
				}
			}
		}
	}

	void handleTemperature (){
		int powered;
		float tempt;
		//loop through PlayerInfo.player.factories list; factory = one factories element
		foreach (Factory factory in PlayerInfo.player.getFactory()) {
			//check mars oxygen level
			tempt = PlayerInfo.mars.getAverageTemp();
			if(tempt < 61){
				//check if factory is powered on to release
				powered = factory.getPowered();
				if(powered == 1){
					tempt = tempt + factory.getReleaseAmount();
					PlayerInfo.mars.updateAverageTemp(tempt);
				}
			}
		}
	}
	void handleRandomEvents(){
		if (PlayerInfo.player.getBases ().Count == 3 || playerHad3Bases == true) {
			playerHad3Bases = true;
			int checkIfEventOccurs = Random.Range (1, 100);
			if (checkIfEventOccurs >= 1 && checkIfEventOccurs <= 30) {
				Debug.Log("Event has occured");
				int positiveOrNegative = Random.Range (1, 100);
				//positive
				if (positiveOrNegative <= 25) {
					int whichPositive = Random.Range (1, 100);
					//	Scientific breakthrough - yield increases for all resource gathering structures 
					if (whichPositive <= 50) {
						foreach (Farm farm in PlayerInfo.player.getFarms()) {
							if (farm.getTurnsToBuild () == 0) {
								farm.updateGatherFoodAmount (farm.getGatherFoodAmount () + 5);
							}
						}
						foreach (ResearchLab lab in PlayerInfo.player.getResearchlabs()) {
							if (lab.getTurnsToBuild () == 0) {
								lab.updateResearchAmount (lab.getResearchAmount () + 2);
							}
						}
					}
					//	Hex tile with rich resource yield found - specified tile increases it’s resource yield. 
					else {
						int richResourceXPos = Random.Range (0, 99);
						int richResourceZPos = Random.Range (0, 49);
						List<TileResource> check = TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).getResources ();
						//check resources at random position
						foreach (TileResource resource in check) {
							//if no resources then remove "none" and then insert a new resource
							if (resource.resource.Equals ("none")) {
								TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).removeResource ("none");
								int insertWaterOrBuildingResource = Random.Range (1, 100);
								//water
								if (insertWaterOrBuildingResource >= 50) {
									TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).addResouce ("water", 35);
								}
								//building
								else {
									TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).addResouce ("building", 35);
								}
							}
							//else if the tile has water then increase it
							else if (resource.resource.Equals ("water")) {
								TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).updateResourceAmount ("water", 10);
							}
							//else if the tile has building resources then increase it
							else if (resource.resource.Equals ("building")) {
								TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).updateResourceAmount ("building", 10);
							}
						}
						FogMap functions = new FogMap ();
						//if the tile is not visable then change it to visable and display the resource icon
						if (TGMap.map.GetTileAt (richResourceXPos, richResourceZPos).getIsVisable () == false) {
							
							functions.checkFogForTile (richResourceXPos, richResourceZPos);
						}
						//else if it's already visable then check to see if there are resource icons there, if not then create some
						else {
							List<ResourceIcon> checkIcons = FogMap.icons;
							foreach (ResourceIcon icon in checkIcons) {
								if (icon.xposition == richResourceXPos && icon.yposition == richResourceZPos) {
									if (icon.icons.Count == 0) {
										functions.createResourcePrefabs (richResourceXPos, richResourceZPos);
									}
								}
							}
						}
					}
				}
				//negative
				else {
					int whichNegative = Random.Range(1,100);
					//Cyclones - destroys structures
					if(whichNegative>=1&&whichNegative<=20){
						List<BoolCheck> playerHasBuildings = new List<BoolCheck>();
						playerHasBuildings = pickRandomBuildingsList();
						pickRandomBuildingDestroy(playerHasBuildings);
					}
					//Gamma Ray Burst - lowers production or population on specific structures
					else if(whichNegative>20&&whichNegative<=40){
						List<BoolCheck> playerHasBuildings = new List<BoolCheck>();
						playerHasBuildings = pickRandomBuildingsList();
						pickRandomBuildingReduce(playerHasBuildings);
					}
					//	Disease - lowers population in mars base
					else if(whichNegative>40&&whichNegative<=60){
						int randomBases = Random.Range(0,PlayerInfo.player.getBases().Count-1);
						int i=0;
						if(PlayerInfo.player.getBases().Count>1){
							foreach(Base sBase in PlayerInfo.player.getBases()){
								if(i==randomBases&&sBase.getPopulation()>1){
									sBase.updatePopulation(sBase.getPopulation()/2);
								}
								else {
									i++;
								}
							}
						}
					}
					//	Power Failure - power plant stops functioning
					else if(whichNegative>60&&whichNegative<=80){
						int randomPowerPlant = Random.Range(0,PlayerInfo.player.getPowerplant().Count-1);
						int i=0;
						if(PlayerInfo.player.getPowerplant().Count>1){
							foreach(Powerplant plant in PlayerInfo.player.getPowerplant()){
								if(i==randomPowerPlant&&plant.getTurnsTilEnable()==0){
									plant.powerDown();
									plant.updateTurnsTilEnable(5);
								}
								else
									i++;
							}
						}
					}
					//	Meteor Impact - destroys anything structure/unit on specific tiles
					else if(whichNegative>80&&whichNegative<=100){
						List<BoolCheck> playerHasBuildings = new List<BoolCheck>();
						playerHasBuildings = pickRandomBuildingsList();
						pickRandomBuildingDestroy(playerHasBuildings);
					}
					
					
					
					
					
					
					
				}
				
				
			} else {
				turnsSinceRandomEvent++;
			}
			//Cyclones - destroys structures
			//Gamma Ray Burst - lowers production or population on specific structures
			//	Disease - lowers population in mars base
			//	Power Failure - power plant stops functioning
			
			
		}
	}
	void destroyBuilding(int targetIndex, string targetType){
		int i = 0;
		switch (targetType) {
		case "farm":
			List<Farm> farms = PlayerInfo.player.getFarms();
			foreach(Farm farm in farms){
				if(i==targetIndex){
					GameObject building = PlayerInfo.buildings[farm.getX(),farm.getY()];
					Destroy(building);
					TGMap.map.GetTileAt(farm.getX(),farm.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
		case "research":
			List<ResearchLab> labs = PlayerInfo.player.getResearchlabs();
			foreach(ResearchLab lab in labs){
				if(i==targetIndex){
					Destroy(PlayerInfo.buildings[lab.getX(),lab.getY()]);
					TGMap.map.GetTileAt(lab.getX(),lab.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
		case "factory":
			List<Factory> factories = PlayerInfo.player.getFactory();
			foreach(Factory factory in factories){
				if(i==targetIndex){
					Destroy(PlayerInfo.buildings[factory.getX(),factory.getY()]);
					TGMap.map.GetTileAt(factory.getX(),factory.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
		case "warehouse":
			List<Warehouse> warehouses = PlayerInfo.player.getWarehouses();
			foreach(Warehouse warehouse in warehouses){
				if(i==targetIndex){
					Destroy(PlayerInfo.buildings[warehouse.getX(),warehouse.getY()]);
					TGMap.map.GetTileAt(warehouse.getX(),warehouse.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
		case "chemical":
			List<ChemistryPlant> chemicalplants = PlayerInfo.player.getChemistryPlants();
			foreach(ChemistryPlant chemicalplant in chemicalplants){
				if(i==targetIndex){
					Destroy(PlayerInfo.buildings[chemicalplant.getX(),chemicalplant.getY()]);
					TGMap.map.GetTileAt(chemicalplant.getX(),chemicalplant.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
		case "power":
			List<Powerplant> powerplants = PlayerInfo.player.getPowerplant();
			foreach(Powerplant powerplant in powerplants){
				if(i==targetIndex){
					Destroy(PlayerInfo.buildings[powerplant.getX(),powerplant.getY()]);
					TGMap.map.GetTileAt(powerplant.getX(),powerplant.getY()).updateBulding(null);
					PlayerInfo.player.removeFarm(i);
				}
				else{
					i++;
				}
			}
			break;
			
		}
	}
	List<BoolCheck> pickRandomBuildingsList(){
		bool hasBuilding=true;
		List<BoolCheck> playerHasBuildings = new List<BoolCheck>();
		if(PlayerInfo.player.getFarms().Count>0){
			string name = "farm";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		else if(PlayerInfo.player.getResearchlabs().Count>0){
			string name = "research";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		else if(PlayerInfo.player.getFactory().Count>0){
			string name = "factory";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		else if(PlayerInfo.player.getWarehouses().Count>0){
			string name = "warehouse";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		else if(PlayerInfo.player.getChemistryPlants().Count>0){
			string name = "chemical";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		else if(PlayerInfo.player.getPowerplant().Count>0){
			string name = "power";
			BoolCheck newBoolCheck = new BoolCheck();
			newBoolCheck.name=name;
			newBoolCheck.hasBuilding=hasBuilding;
			playerHasBuildings.Add(newBoolCheck);
		}
		return playerHasBuildings;
	}
	void pickRandomBuildingDestroy(List<BoolCheck> playerHasBuildings){
		int target = Random.Range (0, playerHasBuildings.Count-1);
		int i = 0;
		if(playerHasBuildings.Count>0){
			foreach(BoolCheck check in playerHasBuildings){
				if(i==target){
					int j;
					switch(check.name){
					case "farm":
						j = Random.Range(0,PlayerInfo.player.getFarms().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "research":
						j = Random.Range(0,PlayerInfo.player.getResearchlabs().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "factory":
						j = Random.Range(0,PlayerInfo.player.getFactory().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "warehouse":
						j = Random.Range(0,PlayerInfo.player.getWarehouses().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "chemical":
						j = Random.Range(0,PlayerInfo.player.getChemistryPlants().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "power":
						j = Random.Range(0,PlayerInfo.player.getPowerplant().Count-1);
						destroyBuilding(j, check.name);
						break;
					}
					
				}
				else{
					i++;
				}
			}
		}
	}
	void pickRandomBuildingReduce(List<BoolCheck> playerHasBuildings){
		foreach (BoolCheck check in playerHasBuildings) {
			if(check.name.Equals("warehouse")){
				playerHasBuildings.Remove(check);
			}
			else if(check.name.Equals("warehouse")){
				playerHasBuildings.Remove(check);
			}
		}
		int target = Random.Range (0, playerHasBuildings.Count-1);
		int i = 0;
		if(playerHasBuildings.Count>0){
			foreach(BoolCheck check in playerHasBuildings){
				if(i==target){
					int j;
					switch(check.name){
					case "farm":
						j = Random.Range(0,PlayerInfo.player.getFarms().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "research":
						j = Random.Range(0,PlayerInfo.player.getResearchlabs().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "factory":
						j = Random.Range(0,PlayerInfo.player.getFactory().Count-1);
						destroyBuilding(j, check.name);
						break;
					case "chemical":
						j = Random.Range(0,PlayerInfo.player.getChemistryPlants().Count-1);
						destroyBuilding(j, check.name);
						break;
					}
					
				}
				else{
					i++;
				}
			}
		}
	}
	void reduceProduction(int targetIndex, string targetType){
		int i = 0;
		switch (targetType) {
		case "farm":
			List<Farm> farms = PlayerInfo.player.getFarms ();
			foreach (Farm farm in farms) {
				if (i == targetIndex) {
					farm.updateGatherFoodAmount(farm.getGatherFoodAmount()/2);
				} else {
					i++;
				}
			}
			break;
		case "research":
			List<ResearchLab> labs = PlayerInfo.player.getResearchlabs ();
			foreach (ResearchLab lab in labs) {
				if (i == targetIndex) {
					lab.updateResearchAmount(lab.getResearchAmount()/2);
				} else {
					i++;
				}
			}
			break;
		case "factory":
			List<Factory> factories = PlayerInfo.player.getFactory ();
			foreach (Factory factory in factories) {
				if (i == targetIndex) {
					factory.updateReleaseAmount(factory.getReleaseAmount()/2);
				} else {
					i++;
				}
			}
			break;
		case "chemical":
			List<ChemistryPlant> chemicalplants = PlayerInfo.player.getChemistryPlants ();
			foreach (ChemistryPlant chemicalplant in chemicalplants) {
				if (i == targetIndex) {
					chemicalplant.updateReleaseAmount(chemicalplant.getReleaseAmount()/2);
				} else {
					i++;
				}
			}
			break;
		}
	}
	void handleHelpSupportSystem(int turnNum){
		if (turnNum % 5==0) {
			int baseCount = PlayerInfo.player.getBases().Count;
			if(baseCount==1){
				PlayerInfo.player.updateFood(50);
				PlayerInfo.player.updateWater(50);
			}
			else if(baseCount>1&&baseCount<=3){
				PlayerInfo.player.updateFood(30);
				PlayerInfo.player.updateWater(30);
			}
			else if(baseCount>3&&baseCount<=5){
				PlayerInfo.player.updateFood(10);
				PlayerInfo.player.updateWater(10);
			}
		}
	}
	void handleTerraforming(){
		if(PlayerInfo.mars.getAverageTemp()>(0.21/2)){
			for(int x=0;x<TGMap.size_x;x++){
				for(int y=0;y<TGMap.size_z;y++){
					int chanceToChange = Random.Range(1,100);
					if(TGMap.map.GetTileAt(x,y).getHasIce()==true&&chanceToChange>=1&&chanceToChange<=10){
						TGMap.map.GetTileAt(x,y).updateHasIce(false);
						if (TGMap.elevationMap [x, y].ToString ().Contains ("Mountain")) {
							int whichTexture = Random.Range(1,4);
							string mountainTexture = "Textures/Mountain Texture "+whichTexture;
							if(TGMap.elevationMap[x,y].FindChild("pCube4")){
								Transform tile=TGMap.elevationMap[x,y].transform.FindChild("pCube4");
								tile.renderer.material.mainTexture = Resources.Load (mountainTexture) as Texture;
							}
							else{
								TGMap.elevationMap[x,y].renderer.material.mainTexture = Resources.Load(mountainTexture) as Texture;
							}
						}
						else if (TGMap.elevationMap [x, y].ToString ().Contains ("Flat")) {
							int whichTexture = Random.Range(1,9);
							string flatTexture = "Textures/Flat Texture "+whichTexture;
							if(TGMap.elevationMap[x,y].FindChild("pCube4")){
								Transform tile=TGMap.elevationMap[x,y].transform.FindChild("pCube4");
								tile.renderer.material.mainTexture = Resources.Load (flatTexture) as Texture;
							}
							else{
								TGMap.elevationMap[x,y].renderer.material.mainTexture = Resources.Load(flatTexture) as Texture;
							}
						}
						else if (TGMap.elevationMap [x, y].ToString ().Contains ("Hills")) {
							int whichTexture = Random.Range(1,3);
							string hillTexture = "Textures/Hill Texture "+whichTexture;
							if(TGMap.elevationMap[x,y].FindChild("pCube4")){
								Transform tile=TGMap.elevationMap[x,y].transform.FindChild("pCube4");
								tile.renderer.material.mainTexture = Resources.Load (hillTexture) as Texture;
							}
							else{
								TGMap.elevationMap[x,y].renderer.material.mainTexture = Resources.Load(hillTexture) as Texture;
							}
						}
						else if (TGMap.elevationMap [x, y].ToString ().Contains ("Valley")) {
							int whichTexture = Random.Range(1,9);
							string flatTexture = "Textures/Flat Texture "+whichTexture;
							if(TGMap.elevationMap[x,y].FindChild("pCube4")){
								Transform tile=TGMap.elevationMap[x,y].transform.FindChild("pCube4");
								tile.renderer.material.mainTexture = Resources.Load (flatTexture) as Texture;
							}
							else{
								TGMap.elevationMap[x,y].renderer.material.mainTexture = Resources.Load(flatTexture) as Texture;
							}
						}
					}
				}
			}
		}
	}
}
