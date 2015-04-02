using UnityEngine;
using System.Collections;

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
	
	void OnGUI() {
		if (GUI.Button (new Rect (320, 265, 200, 30), "Next Turn")) {
			Debug.Log ("Start new turn");
			EndTurn();
		}
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	//end current turn and increment turn counter by 1 when clicked End Turn button
	public void EndTurn(){
		turnNum = turnNum + 1;
		SetTurnCountText();
		moveCount = 0;
	}
	
	//setting the turn counter text to display the turn number
	void SetTurnCountText(){
		turnCountText.text = "Turn Number: " + turnNum.ToString();
	}
	
	//setting GUIText to empty string to hide it
	void hideMessage(GUIText message){
		message.text = "";
	}
}
