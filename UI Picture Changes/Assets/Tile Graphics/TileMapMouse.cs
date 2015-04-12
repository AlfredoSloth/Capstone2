using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[RequireComponent(typeof(TileMap))]
public class TileMapMouse : MonoBehaviour {
	
	TGMap _tileMapGfx;
	PlayerInfo _playerInfo;
	
	Vector3 currentTileCoord;
	Vector3 selectedTileCoord;
	private GameObject instance;
	public Transform selectionCube;
	GameObject bipanel;
	GameObject bitext;
	GameObject btnPlaceBuilding;
	GameObject btnUpgrade;
	GameObject waterScore;
	GameObject foodScore;
	GameObject buildingScore;
	
	Building build;
	private bool showButton;
	string place = "";
	
	int resource = 12; //for testing
	
	void Start() {
		_tileMapGfx = GetComponent<TGMap> ();
		_playerInfo = GetComponent<PlayerInfo>();
		instance = (GameObject)Resources.Load ("Base");
		//Find the UI objects
		bipanel = GameObject.Find ("BuildingInfoPanel");
		bitext = GameObject.Find ("BuildingInfoText");
		btnPlaceBuilding = GameObject.Find ("PlaceBuildingText");
		btnUpgrade = GameObject.Find ("UpgradeBtn");
		waterScore = GameObject.FindGameObjectWithTag ("water");
		foodScore = GameObject.FindGameObjectWithTag ("food");
		buildingScore = GameObject.FindGameObjectWithTag ("buildingresource");
		
		//Hides Building Info on startup
		hideBuildingStats ();
		place = "none";
	}
	
	// Update is called once per frame
	void Update () {
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit hitInfo;
		
		if (collider.Raycast (ray, out hitInfo, Mathf.Infinity)) {
			int x = Mathf.FloorToInt(hitInfo.point.x/_tileMapGfx.tileSize);
			int z = Mathf.FloorToInt(hitInfo.point.z/_tileMapGfx.tileSize);
			//Debug.Log("x:" + x + " z:" + z);
			currentTileCoord.x = x;
			currentTileCoord.z = z;
			
			selectionCube.transform.position = currentTileCoord*3f;
			
			//Checks for Building on map. If building is present, building information shows up.
			//To make this work ON CLICK and not HOVER change currentTileCoord to selectedTileCoord.
			build = TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding();
			if (build != null) {
				showBuildingStats (build);
			}
			else {
				hideBuildingStats();
			}
			
			if(Input.GetMouseButtonDown (0)){
				//grab the coordinate at mouse click on map
				selectedTileCoord = currentTileCoord;
			}
		}
		else {
		}
		updateScoreText ();
	}
	
	public void upgradeBuilding(){
		Debug.Log ("Upgrade building");
		//int resource = PlayerInfo.player.getBuildingResources();
		if(resource >= 5){
			build.updateLevel(build.getLevel() + 1);
			resource = resource - 5; //resource - build.getCost();
			Debug.Log ("cost:" + build.getCost());
			PlayerInfo.player.updateBuildingResources(resource);
			Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
			showBuildingStats (build);
		}else{
			bitext.GetComponent<Text>().text = "Not enough resource!";
			showButton = false;
		}
	}
	
	//Upgrades the textboxes on the UI
	void updateScoreText(){
		waterScore.GetComponent<Text> ().text = "Water: " + PlayerInfo.player.getWater();;
		foodScore.GetComponent<Text> ().text = "Food: " + PlayerInfo.player.getFood();;
		buildingScore.GetComponent<Text> ().text = "Building: " + PlayerInfo.player.getBuildingResources();
	}

	public void buildBuilding(string type){
		place = type;
		Building check = TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding();
		if(check==null){
			switch (place) {
			case "Base":
				buildBase();
				break;
			case "Beacon":
				buildBeacon();
				break;
			case "Farm":
				buildFarm();
				break;
			case "Research Lab":
				buildResearchLab();
				break;
			case "Warehouse":
				buildWarehouse();
				break;
			case "Factory":
				buildFactory();
				break;
			case "Power Plant":
				buildPowerPlant();
				break;
			case "Magnetosphere":
				buildMagnetosphere();
				break;
			case "Chemical Plant":
				buildChemicalPlant();
				break;
			default:
				break;
			}
		}
		else{
			Debug.Log("Tile at coords " + selectedTileCoord.x + "," + selectedTileCoord.z + " has a building in this location: " + check.getName());
		}
	}
	
	void hideBuildingStats(){
		bitext.SetActive (false);
		bipanel.SetActive (false);
		btnUpgrade.SetActive (false);
	}
	
	void showBuildingStats(Building b){
		bipanel.SetActive (true);
		bitext.SetActive (true);
		bitext.GetComponent<Text>().text = b.buildingStats();
		btnUpgrade.SetActive (true);
	}
	
	void buildBase(){
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Base newBuildingInfo = new Base("Base", 5, 1, 1, 5);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getPopulation());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertBase(newBuildingInfo);
		Debug.Log("After insert, number of bases: " + PlayerInfo.player.getBases().Count);
	}
	
	void buildBeacon(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildFarm(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildResearchLab(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildWarehouse(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildFactory(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildPowerPlant(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildMagnetosphere(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}
	void buildChemicalPlant(){
		Debug.Log ("The building type you've selected is not yet implemented.");
	}	
	
}
