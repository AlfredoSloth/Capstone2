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
	public static GameObject[,] buildings;
	public static Rover firstRover;
	public static Farm firstFarm;
	public static Beacon firstBeacon;
	public static Base firstBase;
	public static Powerplant firstPowerPlant;
	public static Warehouse firstWarehouse;
	public static int placeRoverX;
	public static int placeRoverY;
	public static GameObject rover;
	
	TGMap _tileMapGfx;
	// Use this for initialization
	void Start ()
	{
		_tileMapGfx = GetComponent<TGMap> ();
		createPlayer ();
		mars = new Mars (-80, false, 5.00f, 0.13f);
		buildings = new GameObject[TGMap.size_x,TGMap.size_z];
	}
	void createPlayer(){
		player = new Player (100, 100, 100, 100);
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
	public static void createStartLocation(){
		placeRoverX = Random.Range (50, 40);
		placeRoverY = Random.Range (20, 30);
		
		//placing first rover in data
		firstRover = new Rover ("Rover", placeRoverX, placeRoverY, 2, 4);
		TGMap.map.GetTileAt (placeRoverX, placeRoverY).updateHasRover (firstRover);
		
		//placing Farm in data
		int farmCost = PlayerInfo.player.getCostAtLevel1("Farm");
		firstFarm = new Farm ("Farm", farmCost, 0, 1, placeRoverX + 2, placeRoverY, 0, 25);
		TGMap.map.GetTileAt(placeRoverX+2, placeRoverY).updateBulding(firstFarm);
		firstFarm.updateCost (firstFarm.getCost() * 2);
		
		//placing Beacon in data
		int beaconCost = PlayerInfo.player.getCostAtLevel1("Beacon");
		firstBeacon = new Beacon ("Beacon", beaconCost, 0, 1, placeRoverX - 1, placeRoverY, 1);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY).updateBulding(firstBeacon);
		firstBeacon.updateCost (firstBeacon.getCost() * 2);
		//PlayerInfo.player.insertBeacon (firstBeacon);
		
		//placing warehouse in data
		int warehouseCost = PlayerInfo.player.getCostAtLevel1("Warehouse");
		firstWarehouse = new Warehouse ("Warehouse", warehouseCost, 0, 1, placeRoverX - 1, placeRoverY - 1, 0);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).updateBulding(firstWarehouse);
		firstWarehouse.updateCost (firstWarehouse.getCost () * 2);
		
		//placing powerplant in data
		int powerPlantCost = PlayerInfo.player.getCostAtLevel1("Power Plant");
		firstPowerPlant = new Powerplant ("Power Plant", powerPlantCost, 0, 1, placeRoverX - 1, placeRoverY + 1, 1, 0);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).updateBulding(firstPowerPlant);
		firstPowerPlant.updateCost (firstPowerPlant.getCost () * 2);
		
		//placing base in data
		int baseCost = PlayerInfo.player.getCostAtLevel1("Base");
		firstBase = new Base ("Base", baseCost, 0, 1, placeRoverX, placeRoverY + 1, 0, 4);
		TGMap.map.GetTileAt(placeRoverX, placeRoverY+1).updateBulding(firstBase);
		firstBase.updateCost (firstBase.getCost () * 2);
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
		TurnController.rovers[placeRoverX,placeRoverY]=rover;
		GameObject farm = Instantiate (Resources.Load("FarmPrefab"), location2, Quaternion.identity) as GameObject;
		GameObject beacon = Instantiate (Resources.Load("BeaconPrefab"), location3, Quaternion.identity) as GameObject;
		GameObject warehouse = Instantiate (Resources.Load("WarehousePrefab"), location4, Quaternion.identity) as GameObject;
		GameObject powerPlant = Instantiate (Resources.Load("PowerPlantPrefab"), location5, Quaternion.identity) as GameObject;
		GameObject playerBase = Instantiate (Resources.Load("BasePrefab"), location6, Quaternion.identity) as GameObject;
		location6.y += 13;
		location6.z -= 1;
		Camera.main.transform.position = location6;
		FogMap functions = new FogMap ();
		functions.checkFog ();
	}
	public static void insertStarterBuildings(Base firstBase, Farm firstFarm, Beacon firstBeacon, Powerplant firstPowerPlant, Warehouse firstWarehouse, Rover firstRover, GameObject rover){
		firstBeacon.createSafeZones ();
		firstPowerPlant.powerUp ();
		firstBase.updateSupplier ();
		firstWarehouse.supplyBase ();
		PlayerInfo.player.insertBase (firstBase);
		PlayerInfo.player.insertFarm (firstFarm);
		PlayerInfo.player.insertBeacon (firstBeacon);
		PlayerInfo.player.insertPowerplant (firstPowerPlant);
		PlayerInfo.player.insertWarehouse (firstWarehouse);
		TGMap.map.GetTileAt (firstRover.getPositionX(), firstRover.getPositionY()).updateHasRover (firstRover);
		TurnController.rovers[placeRoverX,placeRoverY]=rover;
	}
}
