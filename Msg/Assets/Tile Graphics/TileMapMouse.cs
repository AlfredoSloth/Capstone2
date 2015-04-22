using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(TileMap))]
public class TileMapMouse : MonoBehaviour {
	
	TGMap _tileMapGfx;
	PlayerInfo _playerInfo;
	Base basepop = new Base ("Kraus",0,0,0,0,0,0,0);
	
	public Renderer rend;
	Vector3 currentTileCoord, selectedTileCoord;
	private GameObject instance;
	public Transform selectionCube, tileSelection;
	GameObject bipanel, bitext, btnPlaceBuilding, btnUpgrade;
	GameObject waterScore, foodScore, buildingScore;
	public GUIText warningMessage;
	TDTile selection;
	int selectionX, selectionY;
	GameObject newBuilding;
	GameObject msg;
	
	Building build, hover;
	string place = "";
	int resource; 
	
	void Start() {
		_tileMapGfx = GetComponent<TGMap> ();
		_playerInfo = GetComponent<PlayerInfo>();
		resource = PlayerInfo.player.getBuildingResources();
		
		//set up prefab for building initialization
		instance = (GameObject)Resources.Load ("Base");
		//Find the UI objects
		bipanel = GameObject.Find ("BuildingInfoPanel");
		bitext = GameObject.Find ("BuildingInfoText");
		btnPlaceBuilding = GameObject.Find ("PlaceBuildingText");
		btnUpgrade = GameObject.Find ("UpgradeBtn");
		waterScore = GameObject.FindGameObjectWithTag ("water");
		foodScore = GameObject.FindGameObjectWithTag ("food");
		buildingScore = GameObject.FindGameObjectWithTag ("buildingresource");
		msg = GameObject.FindGameObjectWithTag ("msgText");

		//Hides Building Info on startup
		hideBuildingStats ();
		place = "none";
		hideMessage();
	}
	
	// Update is called once per frame
	void Update () {
		Ray ray = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit hitInfo;
		
		if (collider.Raycast (ray, out hitInfo, Mathf.Infinity)) {
			int x = Mathf.FloorToInt (hitInfo.point.x / _tileMapGfx.tileSize);
			int z = Mathf.FloorToInt (hitInfo.point.z / _tileMapGfx.tileSize);
			//Debug.Log("x:" + x + " z:" + z);
			currentTileCoord.x = x;
			currentTileCoord.z = z;
			
			selectionCube.transform.position = currentTileCoord * 3f;
			if(newBuilding!=null){
				Debug.Log("transforming position");
				Vector3 buildingCoords = TGMap.elevationMap[(int)currentTileCoord.x, (int)currentTileCoord.z].transform.position;
				newBuilding.transform.position = buildingCoords;
			}
			//Checks for Building on map. If building is present, building information shows up.
			//To make this work ON CLICK and not HOVER change currentTileCoord to selectedTileCoord.
			/*	build = TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding();
			if (build != null) {
				showBuildingStats (build);
			}
			else {
				hideBuildingStats();
			}*/
			
			//change selection cube color base on whether there is a building on the tile
			hover = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z).getBuilding ();
			if (hover != null) {
				foreach (Transform child in selectionCube) { 
					child.renderer.material.color = new Color (1, 0, 0, 1);
				}
			} else {
				foreach (Transform child in selectionCube) { 
					child.renderer.material.color = new Color (0, 1, 0, 1);
				}
			}
			
			
			if (Input.GetMouseButtonDown (1)) {
				if (selection != null) {
					TDTile destination = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z);
					FogMap functions = new FogMap ();
					for (int xpos = selectionX-1; xpos<selectionX+2; xpos++) {
						for (int ypos = selectionY-1; ypos<selectionY+2; ypos++) {
							if (xpos == selectionX && ypos == selectionY) {
							} else if (TGMap.map.GetTileAt (xpos, ypos) == destination) {
								TGMap.map.GetTileAt (xpos, ypos).updateHasRover (null);
								destination.updateHasRover (selection.getHasRover ());
								functions.checkFog2 ((int)currentTileCoord.x, (int)currentTileCoord.z);
								Vector3 destinationPosition = TGMap.elevationMap [(int)currentTileCoord.x, (int)currentTileCoord.z].transform.position;
								
								StartLocation.rovers [selectionX, selectionY].transform.position = destinationPosition; 
								StartLocation.rovers [(int)currentTileCoord.x, (int)currentTileCoord.z] = StartLocation.rovers [selectionX, selectionY];
								StartLocation.rovers [selectionX, selectionY] = null;
								break;
							}
						}
					}
				}
			}
			if (Input.GetMouseButtonDown (0)) {
				//grab the coordinate at mouse click on map
				hideMessage ();
				Debug.Log(newBuilding);
				//selectedTileCoord = currentTileCoord;
				
				//selectedTileCoord.y+=.5f;
				//set tile seleciton indicator so player would know which tile is selected to place buildings
				//tileSelection.transform.position = selectedTileCoord * 3;
				Debug.Log(tileSelection.transform.position);
				//Checks for Building on map. If building is present, building information shows up.
				build = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding ();
				if (build != null) {
					showBuildingStats (build);
				} else {
					hideBuildingStats ();
				}
				if (TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z).getHasRover () != null) {
					selection = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z);
					selectionX = (int)currentTileCoord.x;
					selectionY = (int)currentTileCoord.z; 
					Debug.Log ("Rover Selected!");
				}
				if(newBuilding!=null){
					buildBasePart2();
				}
			} else {
				rend = GetComponent<Renderer> ();
				//making selection cube invisible when mouse not on map boundaries
				ChangeAlpha (rend.material, 0);
			}
			updateScoreText ();

			if(basepop.getPopulation() == 0){
				msg.SetActive(true);
			}
			msg.SetActive(false);
			
		}
	}
	
	public void ChangeAlpha(Material mat, float alpha){
		Color oldColor = mat.color;
		foreach (Transform child in selectionCube) { 
			//child.renderer.material.color = new Color (oldColor.r, oldColor.b, oldColor.g, alpha);
		}
		
	}
	
	public void upgradeBuilding(){
		Debug.Log ("Upgrade building");
		if (build.getTurnsToBuild () == 0) {
			if (resource >= build.getCost ()) {
				resource = resource - build.getCost ();
				Debug.Log ("cost:" + build.getCost ());
				PlayerInfo.player.updateBuildingResources (resource);
				Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources ());
				build.updateLevel (build.getLevel () + 1);
				build.updateCost (build.getCost () * 2);
				Debug.Log ("cost for next level:" + build.getCost ());
				showBuildingStats (build);
			} else {
				bitext.GetComponent<Text> ().text = "Not enough resource!";
				btnUpgrade.SetActive (false);
			}
		} else {
			bitext.GetComponent<Text> ().text = "Operating construction!";
			btnUpgrade.SetActive (false);
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
		//Building check = TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.z).getBuilding();
		//if(check==null){
		if (resource >= PlayerInfo.player.getCostAtLevel1 (place)) {
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
		} else {
			Debug.Log ("Not enough resource to build!");
			showConstructionMessage();
		}
		//}
		//else{
		//Debug.Log("Tile at coords " + selectedTileCoord.x + "," + selectedTileCoord.z + " has a building in this location: " + check.getName());
		//}
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
		if (b is Magnetosphere || b.getLevel() == 3) {
			btnUpgrade.SetActive (false);
		} else {
			btnUpgrade.SetActive (true);
		}
	}
	
	void showConstructionMessage(){
		warningMessage.text = "Not enough resource to build!";
	}
	
	void hideMessage(){
		warningMessage.text = "";
	}
	
	void buildBase(){
		newBuilding = (GameObject)Instantiate (Resources.Load("basePrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		//toBuildBuilding = newBuilding;
		Debug.Log ("instantiated building!");
		//Debug.Log ("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		
	}
	
	void buildBasePart2(){
		Building check = TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.z).getBuilding();
		if (check == null) {
			Base newBuildingInfo = new Base ("Base", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 2);
			Debug.Log ("Creating new building info: " + newBuildingInfo.getName () + " " + newBuildingInfo.getCost () + " " + newBuildingInfo.getTurnsToBuild () + " " + newBuildingInfo.getLevel () + " " + newBuildingInfo.getPowered () + " " + newBuildingInfo.getPopulation ());
			TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding (newBuildingInfo);
			PlayerInfo.player.insertBase (newBuildingInfo);
			//Debug.Log ("After insert, number of bases: " + PlayerInfo.player.getBases ().Count);
			PlayerInfo.player.insertConstructing (newBuildingInfo);
			//Debug.Log ("After insert: " + PlayerInfo.player.getConstructing ().Count);
			//take off the cost to build level 1
			resource = resource - newBuildingInfo.getCost ();
			Debug.Log ("cost:" + newBuildingInfo.getCost ());
			PlayerInfo.player.updateBuildingResources (resource);
			Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources ());
			//update the cost to upgrade to level2
			newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
			newBuilding = null;
		} else {
			Debug.Log("Building is at these coords");
		}
	}
	
	void buildBeacon(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Beacon newBuildingInfo = new Beacon("Beacon", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertBeacon(newBuildingInfo);
		//Debug.Log("After insert, number of beacons: " + PlayerInfo.player.getBeacons().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildFarm(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Farm newBuildingInfo = new Farm("Farm", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertFarm(newBuildingInfo);
		//Debug.Log("After insert, number of farms: " + PlayerInfo.player.getFarms().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildResearchLab(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		ResearchLab newBuildingInfo = new ResearchLab("Research Lab", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 1);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertResearchLab(newBuildingInfo);
		//Debug.Log("After insert, number of research labs: " + PlayerInfo.player.getResearchlabs().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildWarehouse(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Warehouse newBuildingInfo = new Warehouse("Warehouse", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertWarehouse(newBuildingInfo);
		//Debug.Log("After insert, number of warehouses: " + PlayerInfo.player.getWarehouses().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildFactory(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Factory newBuildingInfo = new Factory("Factory", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0, 0.0003f);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getReleaseAmount());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertFactory(newBuildingInfo);
		//Debug.Log("After insert, number of factories: " + PlayerInfo.player.getFactory().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildPowerPlant(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Powerplant newBuildingInfo = new Powerplant("Power Plant", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertPowerplant(newBuildingInfo);
		//Debug.Log("After insert, number of power plants: " + PlayerInfo.player.getPowerplant().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildMagnetosphere(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Magnetosphere newBuildingInfo = new Magnetosphere("Magnetosphere", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0, 5);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToTurnOnMagnetosphere());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertMagnetosphere(newBuildingInfo);
		//Debug.Log("After insert, number of magnetospheres: " + PlayerInfo.player.getMagnetosphere().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}
	void buildChemicalPlant(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		GameObject newBulding = (GameObject)Instantiate(instance, new Vector3((selectedTileCoord.x+0.5f), selectedTileCoord.y, (selectedTileCoord.z+0.5f))*3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		ChemistryPlant newBuildingInfo = new ChemistryPlant("Chemistry Plant", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)selectedTileCoord.x, (int)selectedTileCoord.z, 0, 0.0003f);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getReleaseAmount());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertChemistryPlant(newBuildingInfo);
		//Debug.Log("After insert, number of chemistry plants: " + PlayerInfo.player.getChemistryPlants().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		//take off the cost to build level 1
		resource = resource - newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(resource);
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
	}	
	
}

