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
	public static Mars mars;

	TGMap _tileMapGfx;
	// Use this for initialization
	void Start ()
	{
		_tileMapGfx = GetComponent<TGMap> ();
		createPlayer ();
		mars = new Mars (-80, false, 5.00f, 0.13f);
	}
	void createPlayer(){
		player = new Player (999999, 999999, 999999, 999999);
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
