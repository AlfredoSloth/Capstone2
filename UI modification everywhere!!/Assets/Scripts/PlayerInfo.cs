using UnityEngine;
using System.Collections;

public class PlayerInfo : MonoBehaviour
{
	public static Player player;
	public int water=0;
	public int food=0;
	public int buildingResource=0;
	public static Mars mars;
	public static Transform flatTile;
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
		flatTile = Resources.Load ("FlatPrefab") as Transform;
	}
	void createPlayer(){
		player = new Player (100, 100, 100, 100);
	}

	public static void createStartLocation(){
		placeRoverX = Random.Range (40, 50);
		placeRoverY = Random.Range (20, 30);
		
		//placing first rover in data
		if (TGMap.map.GetTileAt (placeRoverX, placeRoverY).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX,placeRoverY).updateTerrainType(1);
			createFlatLand(placeRoverX,placeRoverY);
		}
		firstRover = new Rover ("Rover", placeRoverX, placeRoverY, 2, 4);
		TGMap.map.GetTileAt (placeRoverX, placeRoverY).updateHasRover (firstRover);
		
		//placing Farm in data
		if (TGMap.map.GetTileAt (placeRoverX+1, placeRoverY).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX+1, placeRoverY).updateTerrainType(1);
			createFlatLand(placeRoverX+1, placeRoverY);
		}
		int farmCost = PlayerInfo.player.getCostAtLevel1("Farm");
		firstFarm = new Farm ("Farm", farmCost, 0, 1, placeRoverX +1, placeRoverY, 1, 25);
		TGMap.map.GetTileAt(placeRoverX+1, placeRoverY).updateBulding(firstFarm);
		firstFarm.updateCost (firstFarm.getCost() * 2);
		
		//placing Beacon in data
		if (TGMap.map.GetTileAt (placeRoverX-1, placeRoverY).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX-1, placeRoverY).updateTerrainType(1);
			createFlatLand(placeRoverX-1, placeRoverY);
		}
		int beaconCost = PlayerInfo.player.getCostAtLevel1("Beacon");
		firstBeacon = new Beacon ("Beacon", beaconCost, 0, 1, placeRoverX - 1, placeRoverY, 1);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY).updateBulding(firstBeacon);
		firstBeacon.updateCost (firstBeacon.getCost() * 2);
		//PlayerInfo.player.insertBeacon (firstBeacon);
		
		//placing warehouse in data
		if (TGMap.map.GetTileAt (placeRoverX-1, placeRoverY-1).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).updateTerrainType(1);
			createFlatLand(placeRoverX-1, placeRoverY-1);
		}
		int warehouseCost = PlayerInfo.player.getCostAtLevel1("Warehouse");
		firstWarehouse = new Warehouse ("Warehouse", warehouseCost, 0, 1, placeRoverX - 1, placeRoverY - 1, 1);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY-1).updateBulding(firstWarehouse);
		firstWarehouse.updateCost (firstWarehouse.getCost () * 2);
		
		//placing powerplant in data
		if (TGMap.map.GetTileAt (placeRoverX-1, placeRoverY+1).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).updateTerrainType(1);
			createFlatLand(placeRoverX-1, placeRoverY+1);
		}
		int powerPlantCost = PlayerInfo.player.getCostAtLevel1("Power Plant");
		firstPowerPlant = new Powerplant ("Power Plant", powerPlantCost, 0, 1, placeRoverX - 1, placeRoverY + 1, 1, 0);
		TGMap.map.GetTileAt(placeRoverX-1, placeRoverY+1).updateBulding(firstPowerPlant);
		firstPowerPlant.updateCost (firstPowerPlant.getCost () * 2);
		
		//placing base in data
		if (TGMap.map.GetTileAt (placeRoverX, placeRoverY + 1).getTerrainType () != 1) {
			TGMap.map.GetTileAt(placeRoverX, placeRoverY + 1).updateTerrainType(1);
			createFlatLand(placeRoverX, placeRoverY + 1);
		}
		int baseCost = PlayerInfo.player.getCostAtLevel1("Base");
		firstBase = new Base ("Base", baseCost, 0, 1, placeRoverX, placeRoverY + 1, 1, 4);
		firstBase.updateWorked (true);
		TGMap.map.GetTileAt(placeRoverX, placeRoverY+1).updateBulding(firstBase);
		firstBase.updateCost (firstBase.getCost () * 2);
		//take off the cost to build level 1
		//update the cost to upgrade to level2
		
		
		Vector3 location1 = TGMap.elevationMap [placeRoverX, placeRoverY].transform.position;
		Vector3 location2 = TGMap.elevationMap [placeRoverX + 1, placeRoverY].transform.position;
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
		firstBase.workTiles ();
		PlayerInfo.player.insertBase (firstBase);
		PlayerInfo.player.insertFarm (firstFarm);
		PlayerInfo.player.insertBeacon (firstBeacon);
		PlayerInfo.player.insertPowerplant (firstPowerPlant);
		PlayerInfo.player.insertWarehouse (firstWarehouse);
		TGMap.map.GetTileAt (firstRover.getPositionX(), firstRover.getPositionY()).updateHasRover (firstRover);
		TurnController.rovers[placeRoverX,placeRoverY]=rover;
	}
	public static void createFlatLand(int x, int y){
		Debug.Log ("flattening!");
		Debug.Log (TGMap.elevationMap[x,y].ToString());
		Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
		
		if (TGMap.elevationMap [x, y].ToString ().Contains ("HillsPrefab2")||TGMap.elevationMap [x, y].ToString ().Contains ("HillsPrefab1")) {
			Debug.Log ("Hill y position: "+TGMap.elevationMap [x, y].transform.position.y);
			levelOff.y+=0.049f;
		}
		if(TGMap.elevationMap[x,y].ToString().Contains("Valley"))
			levelOff.y+=0.0f;
		//levelOff.y+=0.356f;
		
		Vector3 startTileCoords = TGMap.elevationMap [x, y].transform.position;
		GameObject check = Resources.Load ("flat") as GameObject;
		Debug.Log (check);
		GameObject elevationTile = Instantiate (Resources.Load("flat"), new Vector3 ((startTileCoords.x), startTileCoords.y+0.00f, (startTileCoords.z)), Quaternion.identity) as GameObject;
		Transform tileToDestroy = TGMap.elevationMap [x, y]; 
		Destroy (tileToDestroy.gameObject);
		Debug.Log (elevationTile);
		elevationTile.transform.position += levelOff;
		Debug.Log ("ypos after leveloff: "+elevationTile.transform.position.y);
		Transform thingything=elevationTile.transform.FindChild("pCube4");
		
		int whichTexture = Random.Range(1,9);
		string flatTexture = "Textures/Flat Texture "+whichTexture;
		string normalFlat = "Textures/NormalMaps/Flat Texture " + whichTexture;
		
		Material newMaterial;
		newMaterial = new Material(Shader.Find("Bumped Diffuse"));
		thingything.renderer.material = newMaterial;
		Texture bumpMap = Resources.Load(normalFlat) as Texture;
		
		thingything.renderer.material.mainTexture = Resources.Load(flatTexture) as Texture;
		thingything.renderer.material.SetTexture("_BumpMap", bumpMap);
		thingything.renderer.material.color = new Color32(0,0,0,255);
		TGMap.elevationMap[x,y] = elevationTile.transform;
	}
}
