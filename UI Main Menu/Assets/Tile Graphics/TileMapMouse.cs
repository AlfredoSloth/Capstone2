using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[RequireComponent(typeof(TileMap))]
public class TileMapMouse : MonoBehaviour {

	TGMap _tileMapGfx;
	PlayerInfo _playerInfo;
	
	Vector3 currentTileCoord;
	private GameObject instance;
	public Transform selectionCube;
	GameObject bipanel;
	GameObject bitext;

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

		}
		else {
		}
		if(Input.GetMouseButtonDown (0)){
			//Debug.Log("Terrain Type:" + TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.y).getTerrainType());
			Building check = TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.y).getBuilding();
			if(check==null){
				GameObject newBulding = (GameObject)Instantiate(instance, new Vector3(currentTileCoord.x+.5f, currentTileCoord.y, currentTileCoord.z+.5f)*3f, Quaternion.identity);
				Debug.Log("Creating new building at coords: " + currentTileCoord.x + "," + currentTileCoord.z);
				Base newBuildingInfo = new Base("Base", 5, 10, 5, 5);
				Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getPopulation());
				TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.y).updateBulding(newBuildingInfo);
				PlayerInfo.player.insertBase(newBuildingInfo);
				Debug.Log("After insert, number of bases: " + PlayerInfo.player.getBases().Count);
			}
			else{
				Debug.Log("Tile at coords " + currentTileCoord.x + "," + currentTileCoord.z + " has a building in this location: " + check.getName());
			}
		}
		//Constantly checks for Builing on map. If building is present, building information shows up.
		Building build = TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.y).getBuilding();
		if (build != null) {
			showBuildingStats (build);
		}
		else {
			hideBuildingStats();
		}
	}
	void hideBuildingStats(){
		bitext.SetActive (false);
		bipanel.SetActive (false);
	}
	
	void showBuildingStats(Building b){
		bipanel.SetActive (true);
		bitext.SetActive (true);
		bitext.GetComponent<Text>().text = b.buildingStats();
	}
}
