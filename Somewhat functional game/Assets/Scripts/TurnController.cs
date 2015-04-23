using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

public class TurnController : MonoBehaviour {
	//turn properties
	public static TurnSystem turn;
	private int moveCount; //counter for number of available moves during current turn
	
	//notifications for testing purpose
	GameObject bipanel, bitext;
	public GUIText warningMessage;
	
	//checks in the turn for rovers
	public int maxMoves = 2; //max number of moves during a turn
	public int distance = 1; //the number of grids available for each move in all directions
	
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
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	//end current turn and increment turn counter by 1 when clicked End Turn button
	public void EndTurn(){
		turn.incrementTurnNum();
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
			PlayerInfo.player.updateBuildingResources(specificBase.gatherBuildingResources());
			//Debug.Log (PlayerInfo.player.getBuildingResources());
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
}
