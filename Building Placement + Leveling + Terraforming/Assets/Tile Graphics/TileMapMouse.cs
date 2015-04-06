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
	Building build;
	private bool showButton;

	int resource = 12; //for testing

	void Start() {
		_tileMapGfx = GetComponent<TGMap> ();
		_playerInfo = GetComponent<PlayerInfo>();
		instance = (GameObject)Resources.Load ("Base");
		//Find the UI objects
		bipanel = GameObject.Find ("BuildingInfoPanel");
		bitext = GameObject.Find ("BuildingInfoText");
		//Hides Building Info on startup
		hideBuildingStats ();
	}

	void OnGUI() {
		if (showButton){
			if (GUI.Button (new Rect (65, 247, 100, 30), "Upgrade")) {
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
		}
		if(GUI.Button (new Rect (10, 40, 100, 30), "Build Base")) {
			//Debug.Log ("Build new base");
			//check for type of building to build, and resources available and turn number before build
			//pass in the building info
			buildBuilding();
		}
		
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

			if(Input.GetMouseButtonDown (0)){
				//grab the coordinate at mouse click on map
				selectedTileCoord = currentTileCoord;
				//Checks for Building on map. If building is present, building information shows up.
				build = TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding();
				if (build != null) {
					showBuildingStats (build);
				}
				else {
					hideBuildingStats();
				}
			}
		}
		else {
		}
	}

	void hideBuildingStats(){
		bitext.SetActive (false);
		bipanel.SetActive (false);
		showButton = false;
	}
	
	void showBuildingStats(Building b){
		bipanel.SetActive (true);
		bitext.SetActive (true);
		bitext.GetComponent<Text>().text = b.buildingStats();
		showButton = true;
	}

	void buildBuilding(){
		Building check = TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding();
		if(check==null){
			GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
			Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
			Base newBuildingInfo = new Base("Base", 5, 1, 1, 5);
			Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getPopulation());
			TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
			PlayerInfo.player.insertBase(newBuildingInfo);
			Debug.Log("After insert, number of bases: " + PlayerInfo.player.getBases().Count);
		}
		else{
			Debug.Log("Tile at coords " + selectedTileCoord.x + "," + selectedTileCoord.z + " has a building in this location: " + check.getName());
		}
	}

}
