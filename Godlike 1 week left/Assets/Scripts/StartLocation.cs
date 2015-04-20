using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class StartLocation : MonoBehaviour {
	TGMap _tgMap;
	PlayerInfo _playerInfo;
	public static GameObject[,] rovers;
	// Use this for initialization
	void Start () {
		_playerInfo = GetComponent<PlayerInfo> ();
		_tgMap = GetComponent<TGMap> ();
	}
	
	public void CreateStartLocation(){
		int placeRoverX = Random.Range (50, 40);
		int placeRoverY = Random.Range (20, 30);
		rovers = new GameObject[TGMap.size_x, TGMap.size_z];
		//placing first rover in data
		TGMap.map.GetTileAt (placeRoverX, placeRoverY).updateHasRover (new Rover("Rover", placeRoverX, placeRoverY, 2, 4));
		Debug.Log (TGMap.map.GetTileAt (placeRoverX, placeRoverY).getHasRover());
		//placing Farm in data
		int farmCost = PlayerInfo.player.getCostAtLevel1("Farm");
		TGMap.map.GetTileAt(placeRoverX+3, placeRoverY).updateBulding(new Farm("Farm", farmCost, 3, 1, placeRoverX+3, placeRoverY, 0));
		//placing warehouse in data
		int warehouseCost = PlayerInfo.player.getCostAtLevel1("Warehouse");
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).updateBulding(new Warehouse("Warehouse", warehouseCost, 3, 1, placeRoverX-1, placeRoverY-1, 0));
		//placing powerplant in data
		int powerPlantCost = PlayerInfo.player.getCostAtLevel1("Power Plant");
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).updateBulding(new Powerplant("Power Plant", powerPlantCost, 3, 1, placeRoverX-1, placeRoverY+1, 1, 0));
		//placing base in data
		int baseCost = PlayerInfo.player.getCostAtLevel1("Base");
		TGMap.map.GetTileAt(placeRoverX, placeRoverY+1).updateBulding(new Base("Base", baseCost, 3, 1, placeRoverX, placeRoverY+1, 0, 4));
		Vector3 location1 = TGMap.elevationMap [placeRoverX, placeRoverY].transform.position;
		Vector3 location2 = TGMap.elevationMap [placeRoverX+3, placeRoverY].transform.position;
		Vector3 location3 = TGMap.elevationMap [placeRoverX-1, placeRoverY-1].transform.position;
		Vector3 location4 = TGMap.elevationMap [placeRoverX-1, placeRoverY+1].transform.position;
		Vector3 location5 = TGMap.elevationMap [placeRoverX, placeRoverY+1].transform.position;
		location4.y += .25f;
		location3.y += .23f;
		GameObject rover = Instantiate (Resources.Load("roverPrefab"), location1, Quaternion.identity) as GameObject;
		Debug.Log (rover.ToString());
		rovers[placeRoverX,placeRoverY]=rover;
		
		
		GameObject farm = Instantiate (Resources.Load("FarmPrefab"), location2, Quaternion.Euler(new Vector3(0,-180,0))) as GameObject;
		GameObject warehouse = Instantiate (Resources.Load("WarehousePrefab"), location3, Quaternion.identity) as GameObject;
		GameObject powerPlant = Instantiate (Resources.Load("PowerPlantPrefab"), location4, Quaternion.Euler(new Vector3(0,-180,0))) as GameObject;
		GameObject playerBase = Instantiate (Resources.Load("BasePrefab"), location5, Quaternion.identity) as GameObject;
		FogMap functions = new FogMap ();
		functions.checkFog ();
	}
}
