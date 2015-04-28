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
		Rover firstRover = new Rover ("Rover", placeRoverX, placeRoverY, 2, 4);
		TGMap.map.GetTileAt (placeRoverX, placeRoverY).updateHasRover (firstRover);
		//Debug.Log (TGMap.map.GetTileAt (placeRoverX, placeRoverY).getHasRover());
		PlayerInfo.player.insertRover (firstRover);

		//placing Farm in data
		int farmCost = PlayerInfo.player.getCostAtLevel1("Farm");
		Farm firstFarm = new Farm ("Farm", farmCost, 0, 1, placeRoverX + 2, placeRoverY, 0, 10);
		TGMap.map.GetTileAt(placeRoverX+2, placeRoverY).updateBulding(firstFarm);
		Debug.Log (TGMap.map.GetTileAt(placeRoverX+2, placeRoverY).getBuilding());
		firstFarm.updateCost (firstFarm.getCost() * 2);
		PlayerInfo.player.insertFarm (firstFarm);
		Debug.Log ("Farms count " +PlayerInfo.player.getFarms().Count);

		//placing Beacon in data
		int beaconCost = PlayerInfo.player.getCostAtLevel1("Beacon");
		Beacon firstBeacon = new Beacon ("Beacon", beaconCost, 0, 1, placeRoverX - 1, placeRoverY, 1);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY).updateBulding(firstBeacon);
		Debug.Log (TGMap.map.GetTileAt(placeRoverX-1, placeRoverY).getBuilding());
		firstFarm.updateCost (firstFarm.getCost() * 2);
		PlayerInfo.player.insertBeacon (firstBeacon);

		//placing warehouse in data
		int warehouseCost = PlayerInfo.player.getCostAtLevel1("Warehouse");
		Warehouse firstWarehouse = new Warehouse ("Warehouse", warehouseCost, 0, 1, placeRoverX - 1, placeRoverY - 1, 0);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).updateBulding(firstWarehouse);
		Debug.Log (TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).getBuilding());
		firstWarehouse.updateCost (firstWarehouse.getCost () * 2);
		PlayerInfo.player.insertWarehouse (firstWarehouse);

		//placing powerplant in data
		int powerPlantCost = PlayerInfo.player.getCostAtLevel1("Power Plant");
		Powerplant firstPowerPlant = new Powerplant ("Power Plant", powerPlantCost, 0, 1, placeRoverX - 1, placeRoverY + 1, 1, 0);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).updateBulding(firstPowerPlant);
		Debug.Log (TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).getBuilding());
		firstPowerPlant.updateCost (firstPowerPlant.getCost () * 2);
		PlayerInfo.player.insertPowerplant (firstPowerPlant);

		//placing base in data
		int baseCost = PlayerInfo.player.getCostAtLevel1("Base");
		Base firstBase = new Base ("Base", baseCost, 0, 1, placeRoverX, placeRoverY + 1, 0, 4);
		TGMap.map.GetTileAt(placeRoverX, placeRoverY+1).updateBulding(firstBase);
		Debug.Log (TGMap.map.GetTileAt(placeRoverX, placeRoverY+1).getBuilding());
		firstBase.updateCost (firstBase.getCost () * 2);
		PlayerInfo.player.insertBase (firstBase);
		Debug.Log ("Bases count " + PlayerInfo.player.getBases().Count);
		//Debug.Log ("After insert: " + PlayerInfo.player.getConstructing ().Count);
		//take off the cost to build level 1
		//update the cost to upgrade to level2

		Vector3 location1 = TGMap.elevationMap [placeRoverX, placeRoverY].transform.position;
		Vector3 location2 = TGMap.elevationMap [placeRoverX + 2, placeRoverY].transform.position;
		Vector3 location3 = TGMap.elevationMap [placeRoverX - 1, placeRoverY].transform.position;
		Vector3 location4 = TGMap.elevationMap [placeRoverX - 1, placeRoverY - 1].transform.position;
		Vector3 location5 = TGMap.elevationMap [placeRoverX - 1, placeRoverY + 1].transform.position;
		Vector3 location6 = TGMap.elevationMap [placeRoverX, placeRoverY + 1].transform.position;
		location4.y += .25f;
		location3.y += .23f;
		GameObject rover = Instantiate (Resources.Load("roverPrefab"), location1, Quaternion.identity) as GameObject;
		Debug.Log (rover.ToString());
		rovers[placeRoverX,placeRoverY]=rover;
		firstBeacon.createSafeZones ();
		firstPowerPlant.powerUp ();
		firstBase.updateSupplier ();
		firstWarehouse.supplyBase ();

		
		GameObject farm = Instantiate (Resources.Load("FarmPrefab"), location2, Quaternion.identity) as GameObject;
		GameObject beacon = Instantiate (Resources.Load("BeaconPrefab"), location3, Quaternion.identity) as GameObject;
		GameObject warehouse = Instantiate (Resources.Load("WarehousePrefab"), location4, Quaternion.identity) as GameObject;
		GameObject powerPlant = Instantiate (Resources.Load("PowerPlantPrefab"), location5, Quaternion.identity) as GameObject;
		GameObject playerBase = Instantiate (Resources.Load("BasePrefab"), location6, Quaternion.identity) as GameObject;

		FogMap functions = new FogMap ();
		functions.checkFog ();
	}
}
