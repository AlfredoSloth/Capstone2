using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TurnController : MonoBehaviour {
	//turn properties
	private int turnNum; //to keep track of the turn number for testing purpose
	private int moveCount; //counter for number of available moves during current turn
	
	//notifications for testing purpose
	public GUIText turnCountText;
	public GUIText warningMessage;
	
	//checks in the turn for rovers
	public int maxMoves = 2; //max number of moves during a turn
	public int distance = 1; //the number of grids available for each move in all directions
	
	// Use this for initialization
	void Start () {
		moveCount = 0;
		turnNum = 1;
		SetTurnCountText();
		hideMessage(warningMessage);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	//end current turn and increment turn counter by 1 when clicked End Turn button
	public void EndTurn(){
		turnNum = turnNum + 1;
		SetTurnCountText ();
		//handleConstruction ();
		//both will be handled the turn after they are built
		handleMagnetosphere ();
		handleOxygenLevel ();
		//moveCount = 0;
		
	}
	
	//setting the turn counter text to display the turn number
	void SetTurnCountText(){
		turnCountText.text = "Turn Number: " + turnNum.ToString();
	}
	
	//setting GUIText to empty string to hide it
	void hideMessage(GUIText message){
		message.text = "";
	}
	
	//remove the building from the constructing list if its turnsToBuild == 0
	//otherwise decrement turnsToBuild
	void handleConstruction(){
		int index = 0;
		foreach (Building constructing in PlayerInfo.player.getConstructing()){
			//check turnsToBuild for each building in the constructing list
			int turnsLeft = constructing.getTurnsToBuild();
			if(turnsLeft == 0){
				//check building type
				if(constructing is Powerplant){
					Powerplant plant = constructing as Powerplant;
					//plant.updateTurnsTilEnable(0);
					plant.powerUp();
				}
				PlayerInfo.player.removeConstructing(index);
			}else{
				turnsLeft--;
				constructing.updateTurns(turnsLeft);
			}
			index++;
		}
	}
	
	void handleMagnetosphere(){
		/*so for the magnetosphere machine, after the countdown reaches 0 then you will call the update method for the 
		*marsHasMagnetosphere attribute and change it to true.   countdown should begin the turn after it's built*/
		
		//loop through PlayerInfo.player.magnetospheres list; machine = one magnetospheres element
		foreach (Magnetosphere machine in PlayerInfo.player.getMagnetosphere()) {
			//checks magnetosphere countdown
			int countdown = machine.getTurnsToTurnOnMagnetosphere();
			if(countdown == 0){
				PlayerInfo.mars.updateMarsHasMegnetosphere(true);
			}else{
				machine.decrementTurnsToTurnOnMagnetosphere();
			}
		}
		
	}
	
	void handleOxygenLevel (){
		/*A certain number that the release amount for the two factory types must reach to achieve the goal of 
		 * terraforming (which would mean you’d have to track the total amount of PFCs and Phytoplankton in the 
		 * turn controller via the player object or simply inside the turn controller). */
		
		//loop through PlayerInfo.player.factories list; factory = one factories element
		foreach (Factory factory in PlayerInfo.player.getFactory()) {
			//check mars oxygen level
			float oxygenLevel = PlayerInfo.mars.getMarsOxygen();
			if(oxygenLevel != 0.21f){
				oxygenLevel = oxygenLevel + factory.getReleaseAmount();
				PlayerInfo.mars.updateMarsOxygen(oxygenLevel);
			}
		}
	}
}
