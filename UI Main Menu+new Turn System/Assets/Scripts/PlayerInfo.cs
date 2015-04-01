using UnityEngine;
using System.Collections;

public class PlayerInfo : MonoBehaviour
{
	public GUIText Water;
	public GUIText Food;
	public GUIText Building;
	public static Player player;
	public int water=0;
	public int food=0;
	public int buildingResource=0;
	// Use this for initialization
	void Start ()
	{
		createPlayer ();
	}
	void createPlayer(){
		player = new Player (0, 0, 0);
	}
	//This function is going to be called every turn to get the data updated.
	//still need to 
	public void addScore(){
		water = player.getWater();
		food = player.getFood();
		buildingResource = player.getBuildingResources();
		UpdateScore ();
	}
	// Update is called once per frame
	void UpdateScore ()
	{
		Water.text = water.ToString();
		Food.text = food.ToString();
		Building.text = buildingResource.ToString();
	}
}

