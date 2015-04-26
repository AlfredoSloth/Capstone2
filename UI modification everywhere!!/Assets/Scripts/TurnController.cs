using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class TurnController : MonoBehaviour {
	public static GameObject[,] rovers;
	//turn properties
	public static TurnSystem turn;
	private int moveCount; //counter for number of available moves during current turn
	
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
		turn = new TurnSystem (1);
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
		handlePower ();
		handleSafezones ();
		handleConstruction ();
		handleResearch ();
		handleWaterGathering ();
		handleBuildingResourceGathering ();
		handleFoodGathering ();
		handleMagnetosphere ();
		handleOxygenLevel ();
		handleTemperature ();
		
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
	
	void handleWarehouses(){
		foreach (Warehouse warehouse in PlayerInfo.player.getWarehouses().ToArray()) {
			//if warehouse is done constructing
			if(warehouse.getTurnsToBuild() == 0){
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
			if(plant.getTurnsToBuild() == 0){
				//check if plant is powered on to power buildings around it
				powered = plant.getPowered();
				Debug.Log("Checking to see if plant ");
				if(powered == 1){
					plant.powerUp();
				}
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
			if(powered == 1){
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

			PlayerInfo.player.updateResearch(lab.getResearchAmount());
			//Debug.Log (PlayerInfo.player.getResearch());
			//Debug.Log (lab.getResearchAmount());
		}
	}
	void handleFoodGathering(){
		//Debug.Log ("Farms gathing food "+PlayerInfo.player.getFarms().Count);
		foreach (Farm farm in PlayerInfo.player.getFarms()) {
			PlayerInfo.player.updateFood(farm.getGatherFoodAmount());
			//Debug.Log (PlayerInfo.player.getFood());
		}
	}
	void handleWaterGathering(){
		//Debug.Log ("Bases gathing water "+PlayerInfo.player.getBases().Count);
		foreach (Base specificBase in PlayerInfo.player.getBases()) {
			PlayerInfo.player.updateWater(specificBase.gatherWater());
			//Debug.Log (PlayerInfo.player.getWater());
		}
	}
	void handleBuildingResourceGathering(){
		Debug.Log ("Bases gathing building resources "+PlayerInfo.player.getBases().Count);
		foreach (Base specificBase in PlayerInfo.player.getBases()) {
			if(specificBase.getTurnsToBuild()==0){
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
			if(oxygenLevel != 0.21f){
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
			if(tempt != 61){
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
					//	Meteor Impact - destroys anything structure/unit on specific tiles
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
					int meteorTarget = Random.Range (0, playerHasBuildings.Count);
					int i = 0;
					if(playerHasBuildings.Count>0){
						foreach(BoolCheck check in playerHasBuildings){
							if(i==meteorTarget){
								int j;
								switch(check.name){
								case "farm":
									j = Random.Range(0,PlayerInfo.player.getFarms().Count);
									meteorImpact(j, check.name);
									break;
								case "research":
									j = Random.Range(0,PlayerInfo.player.getResearchlabs().Count);
									meteorImpact(j, check.name);
									break;
								case "factory":
									j = Random.Range(0,PlayerInfo.player.getFactory().Count);
									meteorImpact(j, check.name);
									break;
								case "warehouse":
									j = Random.Range(0,PlayerInfo.player.getWarehouses().Count);
									meteorImpact(j, check.name);
									break;
								case "chemical":
									j = Random.Range(0,PlayerInfo.player.getChemistryPlants().Count);
									meteorImpact(j, check.name);
									break;
								case "power":
									j = Random.Range(0,PlayerInfo.player.getPowerplant().Count);
									meteorImpact(j, check.name);
									break;
								}

							}
							else{
								i++;
							}
						}
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
	void meteorImpact(int targetIndex, string targetType){
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
}
