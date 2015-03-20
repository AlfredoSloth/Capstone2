using UnityEngine;
using System.Collections;

public class TurnController : MonoBehaviour {

	public GameObject selectionCube;
	//turn properties
	private int turnNum; //to keep track of the turn number for testing purpose
	private int moveCount; //counter for number of available moves during current turn

	//notifications for testing purpose
	public GUIText turnCountText;
	public GUIText turnMessage; //notification about turns, such as new turn or end of turn
	public GUIText warningMessage;

	//player properties and can be set in the inspector of Player gameObject
	public int maxMoves = 2; //max number of moves during a turn
	public int distance = 1; //the number of grids available for each move in all directions

	// Use this for initialization
	void Start () {
		moveCount = 0;
		turnNum = 1;
		SetTurnCountText();
		hideMessage(turnMessage);
		hideMessage(warningMessage);
	}


	// Update is called once per frame
	void Update () {
		float tileSize = 3; //this should be dynamically getting from TGMap.tilesize instead of hard coding in 
		float selectedPos_x = selectionCube.transform.position.x;
		float selectedPos_z = selectionCube.transform.position.z;

		float possiblePos_max_x = transform.position.x + (tileSize * distance);
		float possiblePos_max_z = transform.position.z + (tileSize * distance);
		float possiblePos_min_x = transform.position.x - (tileSize * distance);
		float possiblePos_min_z = transform.position.z - (tileSize * distance);

		//set player position to the selection cube position once mouse is clicked within the correct area of the map 
			//and move counter is less than the max number of moves available per turn
		//***issue to fix: when mouse move outside the map, the selection cube moves in that direction
			//and it stops at the edge of the map, however, if mouse is clicked outside the map, 
			//the player moves to the edge of the map where the selection cube is located
		if (Input.GetMouseButtonDown (0) && moveCount < maxMoves) { 

			//determines whether the selected position is within the available distance for the move
			if (selectedPos_x >= possiblePos_min_x && selectedPos_x <= possiblePos_max_x && selectedPos_z >= possiblePos_min_z && selectedPos_z <= possiblePos_max_z){
				transform.position = selectionCube.transform.position;
				moveCount = moveCount + 1;
				hideMessage(turnMessage);
				hideMessage(warningMessage);
			}else{
				hideMessage(turnMessage);
				warningMessage.text = "Max distance is " + distance.ToString() + " grids!";
			}
		} else if (Input.GetMouseButtonDown (0) && moveCount >= maxMoves) {
			EndTurn();
		}
	}
	
	//ending the turn when reach the max number of moves, no matter where on the map is selected
	//or end turn button has been press (this will be implemented when the button object has been added)
	//turn end by incrementing the turn number counter and resetting move counter to 0 for the new turn
	public void EndTurn(){
		//reload the data in the textfield
		PlayerInfo temp = new PlayerInfo ();
		temp.addScore ();
		turnNum = turnNum + 1;
		SetTurnCountText();
		moveCount = 0;
	}
	
	//setting the turn counter text to display the turn number
	void SetTurnCountText(){
		turnCountText.text = "Turn Number: " + turnNum.ToString();
		turnMessage.text = "NEW TURN!";
	}
	
	//setting GUIText to empty string to hide it
	void hideMessage(GUIText message){
		message.text = "";
	}
}
