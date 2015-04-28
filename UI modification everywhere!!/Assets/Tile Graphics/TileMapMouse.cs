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
	GameObject bipanel, bitext, btnPlaceBuilding, btnUpgrade, warnPanel, warnText, marsPanel, marsText1, marsText2, constrPanel;
	GameObject baseTip, beaconTip, chemTip, factoryTip, farmTip, magnetoTip, powerTip, labTip, roverTip, warehouseTip;
	GameObject baseText, beaconText, chemText, factoryText, farmText, magnetoText, powerText, labText, roverText, warehouseText;
	GameObject waterScore, foodScore, buildingScore, researchScore;
	TDTile selection;
	int selectionX, selectionY;
	GameObject newBuilding;
	GameObject msg;
	FogMap fogmapFunctions;
	GameManager gm;

	Building build, hover;
	string place = "";
	int resource; 
	int buildTerrainCheck;
	Vector3 beacSavedCoords;
	Building lastSelected;
	Vector3 lastRoverPosition;
	int lastXPos;
	int lastYPos;
	public AudioClip baseSound;
	public AudioClip beaconSound;
	public AudioClip chemicalPlantSound;
	public AudioClip factorySound;
	public AudioClip farmSound;
	public AudioClip magnetosphereMachineSound;
	public AudioClip powerPlantSound;
	public AudioClip researchLabSound;
	public AudioClip warehouseSound;

	void Start() {
		_tileMapGfx = GetComponent<TGMap> ();
		_playerInfo = GetComponent<PlayerInfo>();
		resource = PlayerInfo.player.getBuildingResources();

		//set up prefab for building initialization
		instance = (GameObject)Resources.Load ("Base");
		//Find the UI objects
		baseTip = GameObject.Find ("BaseTip");
		beaconTip = GameObject.Find ("BeaconTip");
		farmTip = GameObject.Find ("FarmTip");
		labTip = GameObject.Find ("LabTip");
		warehouseTip = GameObject.Find ("WarehouseTip");
		factoryTip = GameObject.Find ("FactoryTip");
		powerTip = GameObject.Find ("PowerTip");
		magnetoTip = GameObject.Find ("MagnetoTip");
		chemTip = GameObject.Find ("ChemTip");
		roverTip = GameObject.Find ("RoverTip");

		baseText = GameObject.Find ("BaseTipText");
		beaconText = GameObject.Find ("BeaconTipText");
		chemText = GameObject.Find ("ChemTipText");
		factoryText = GameObject.Find ("FactoryTipText");
		farmText = GameObject.Find ("FarmTipText");
		magnetoText = GameObject.Find ("MagnetoTipText");
		powerText = GameObject.Find ("PowerTipText");
		labText = GameObject.Find ("LabTipText");
		roverText = GameObject.Find ("RoverTipText");
		warehouseText = GameObject.Find ("WarehouseTipText");

		baseTip.SetActive (false);
		beaconTip.SetActive (false);
		farmTip.SetActive (false);
		labTip.SetActive (false);
		warehouseTip.SetActive (false);
		factoryTip.SetActive (false);
		powerTip.SetActive (false);
		magnetoTip.SetActive (false);
		chemTip.SetActive (false);
		roverTip.SetActive (false);

		constrPanel = GameObject.Find ("ConstrButtonPanel");
		marsPanel = GameObject.Find ("TerraformingPanel");
		marsText1 = GameObject.Find ("ObjectInfoText");
		marsText2 = GameObject.Find ("TerraformingText");
		constrPanel.SetActive (false);
		marsPanel.SetActive (false);

		warnPanel = GameObject.Find ("WarnMsgPanel");
		warnText = GameObject.Find ("WarnText");
		bipanel = GameObject.Find ("BuildingInfoPanel");
		bitext = GameObject.Find ("BuildingInfoText");
		btnPlaceBuilding = GameObject.Find ("PlaceBuildingText");
		btnUpgrade = GameObject.Find ("UpgradeBtn");
		waterScore = GameObject.FindGameObjectWithTag ("water");
		foodScore = GameObject.FindGameObjectWithTag ("food");
		buildingScore = GameObject.FindGameObjectWithTag ("buildingresource");
		researchScore = GameObject.FindGameObjectWithTag ("research");
		msg = GameObject.FindGameObjectWithTag ("msgText");
		buildTerrainCheck = 0;
		fogmapFunctions = new FogMap ();
		gm = GameObject.FindGameObjectWithTag ("gm2").GetComponent<GameManager> ();
		lastSelected = null;
		//Hides Building Info on startup
		hideBuildingStats ();
		place = "none";
		hideWarnMessage();
		updateScoreText();
		updateTerraformingText ();
		updateTipText ();
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

			//if sucessfully load GameMaster script
			if (gm != null){
				//if mouse in not over a UI element
				if(gm.isOverUIelement != true){
			
					selectionCube.transform.position = currentTileCoord * 3f;

					//if the player is trying to place a building
					if(newBuilding!=null){
						string[] prefabNameArray = newBuilding.ToString().Split('(');
						//check to see if the tile that is being hovered over isVisable, isSafe, and is flat
						TDTile check = TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z);
						//change selector tile to green if a beacon is being placed, tile is visable, and is flat
						if(check.getTerrainType()==1&&check.getIsVisable()==true&&prefabNameArray[0].Equals("BeaconPrefab")){
							foreach (Transform child in selectionCube) { 
								child.renderer.material.color = new Color32 (0, 255, 0, 70);
							}
						}
						//else if the tile is safe, visable, and flat
						else if(check.getTerrainType()==1&&check.getIsVisable()==true&&check.getIsSafe()==true){
							foreach (Transform child in selectionCube) { 
								child.renderer.material.color = new Color32 (0, 255, 0, 70);
							}
						}
						//else turn red to indicate an invalid build location
						else{
							foreach (Transform child in selectionCube) { 
								child.renderer.material.color = new Color32 (255, 0, 0, 70);
							}
						}
						//move prefab with the cursor
						Vector3 buildingCoords = TGMap.elevationMap[(int)currentTileCoord.x, (int)currentTileCoord.z].transform.position;
						newBuilding.transform.position = buildingCoords;
					}
					if (build != null) {
						showBuildingStats (build);
					}
					else {
						hideBuildingStats();
					}
					//change selection cube color base on whether there is a building on the tile
					//if the player is not trying to place a building then simply change the color of the cursor if it is hovering over a building
					if(newBuilding==null){
						hover = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z).getBuilding ();
						if (hover != null) {
							foreach (Transform child in selectionCube) { 
								child.renderer.material.color = new Color32 (255, 0, 0, 70);
							}
						} else {
							foreach (Transform child in selectionCube) { 
								child.renderer.material.color = new Color32 (0, 255, 0, 70);
							}
						}
					}

					//If user Left-Clicks
					if (Input.GetMouseButtonDown (0)) {
						//grab the coordinate at mouse click on map
						hideWarnMessage ();
						//Debug.Log(newBuilding);
						selectedTileCoord = currentTileCoord;
						
						selectedTileCoord.y+=.5f;
						//set tile seleciton indicator so player would know which tile is selected to place buildings
						tileSelection.transform.position = selectedTileCoord * 3;
						//Debug.Log(tileSelection.transform.position);
						//Checks for Building on map. If building is present, building information shows up.
						build = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding ();
						if(build!=null&&build is Beacon){
							Beacon beac = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding () as Beacon;
							if(lastSelected!=null){
								recolorRange();
							}
							beac.displayRange();
							lastSelected = beac;
						}
						else if(build!=null&&build is Base){
							Base sBase = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding () as Base;
							if(lastSelected!=null){
								recolorRange();
							}
							sBase.displayRange();
							lastSelected = sBase;
						}
						else if(build!=null&&build is Warehouse){
							Warehouse warehouse = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding () as Warehouse;
							//warehouse.showSupplying();

						}
						else if(build!=null&&build is Powerplant){
							Powerplant power = TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).getBuilding () as Powerplant;
							if(lastSelected!=null){
								recolorRange();
							}
							power.displayRange();
							lastSelected = power;
						}
						else if (build != null) {
							showBuildingStats (build);
						} 
						else {
							if(lastSelected!=null){
								recolorRange();
							}
							lastSelected = null;
							hideBuildingStats ();
						}
						if (TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z).getHasRover () != null) {
							selection = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z);
							selectionX = (int)currentTileCoord.x;
							selectionY = (int)currentTileCoord.z; 
							Debug.Log ("Rover Selected!");
						}
						else{
							selection=null;
						}
						//Debug.Log(TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z).getBuilding().getPowered());
						if(newBuilding!=null){
							TDTile tileCheck = TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z);
							Building buildingCheck = TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z).getBuilding();
							buildTerrainCheck = TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z).getTerrainType();
							string[] prefabNameArray = newBuilding.ToString().Split('(');
							string prefabName = prefabNameArray[0];
							if((buildingCheck==null&&buildTerrainCheck==1&&tileCheck.getIsSafe()==true&&tileCheck.getIsVisable()==true)||(buildingCheck==null&&buildTerrainCheck==1&&tileCheck.getIsVisable()==true&&prefabName.Equals("BeaconPrefab"))){
								//Debug.Log(newBuilding.ToString());
								
								switch(prefabName){
								case "basePrefab":
									buildBasePrt2();
									break;
								case "BeaconPrefab":
									buildBeaconPrt2();
									break;
								case "FarmPrefab":
									buildFarmPrt2();
									break;
								case "ResearchLabPrefab":
									buildResearchLabPrt2();
									break;
								case "WarehousePrefab":
									buildWarehousePrt2();
									break;
								case "FactoryPrefab":
									buildFactoryPrt2();
									break;
								case "PowerPlantPrefab":
									buildPowerPlantPrt2();
									break;
								case "MagnetosphereMachinePrefab":
									buildMagnetospherePrt2();
									break;
								case "ChemicalPlantPrefab":
									buildChemicalPlantPrt2();
									break;
								}
								fogmapFunctions.checkFog2((int)currentTileCoord.x,(int)currentTileCoord.z);
							}
							else{
								Debug.Log("Building has already been placed on this tile");
							}
						}
					}
					else {
						rend = GetComponent<Renderer> ();
						//making selection cube invisible when mouse not on map boundaries
						ChangeAlpha (rend.material, 0);
					}

					//If user Right-Clicks
					if (Input.GetMouseButtonDown (1)) {
						lastRoverPosition = new Vector3(0,0,0);
						if (selection != null) {
							TDTile destination = TGMap.map.GetTileAt ((int)currentTileCoord.x, (int)currentTileCoord.z);
							FogMap functions = new FogMap ();
							for (int xpos = 1/*selectionX-1*/; xpos< 100/*selectionX+2*/; xpos++) {
								for (int ypos = 1/*selectionY-1*/; ypos< 50/*selectionY+2*/; ypos++) {
									if (xpos == selectionX && ypos == selectionY) {
										Debug.Log ("Your alreay there, you silly goose!");
									} 
									else if(TGMap.map.GetTileAt((int)currentTileCoord.x,(int)currentTileCoord.z).getTerrainType() != 1){
										Debug.Log("Alittle to hilly");
										
									}
									else if (TGMap.map.GetTileAt (xpos, ypos) == destination) {
										
										
										TGMap.map.GetTileAt (xpos, ypos).updateHasRover (null);
										destination.updateHasRover (selection.getHasRover ());
										functions.checkFog2 ((int)currentTileCoord.x, (int)currentTileCoord.z);
										int i = 1;
										List<TDTile> path = FindPath(TGMap.map.GetTileAt (selectionX, selectionY),destination);
										Debug.Log ("number of tiles rover needs to move"+path.Count);
										foreach(TDTile tile in path){
											Debug.Log(tile.getXPos() +" " + tile.getYPos());
										}
										foreach(TDTile tile in path){
											if(i==1){
												//destination - go to the next tile on path
												Debug.Log("xpos " + tile.getXPos()+ "ypos " + tile.getYPos());
												Vector3 destinationPosition = TGMap.elevationMap [tile.getXPos(), tile.getYPos()].transform.position;
												Debug.Log(destinationPosition);
												//Debug.Log(selectionX,selction);
												//change origin position to the next tile on path
												TurnController.rovers [selectionX, selectionY].transform.position = destinationPosition;
												
												selection=tile;
												//get rover and save to the new position
												TurnController.rovers [tile.getXPos(), tile.getYPos()] = TurnController.rovers [selectionX, selectionY];
												TGMap.map.GetTileAt(tile.getXPos(),tile.getYPos()).updateHasRover(selection.getHasRover());
												TGMap.map.GetTileAt(selectionX,selectionY).updateHasRover(null);
												Debug.Log(TurnController.rovers [tile.getXPos(), tile.getYPos()]);
												//set last position to null
												TurnController.rovers [selectionX, selectionY] = null;
												//lastposition set to the tile the rover moved to
												lastXPos=tile.getXPos();
												lastYPos=tile.getYPos();
												lastRoverPosition=destinationPosition;
												Debug.Log("last x position after origin" + lastRoverPosition.x + " "+ lastRoverPosition.z);
											}
											//rover has moved once
											else{
												
												Vector3 destinationPosition = TGMap.elevationMap [tile.getXPos(), tile.getYPos()].transform.position;
												Debug.Log(destinationPosition);
												Debug.Log("last x position before next move" + lastRoverPosition.x + " "+ lastRoverPosition.z);
												//Debug.Log(TurnController.rovers [(int)lastRoverPosition.x, (int)lastRoverPosition.z].transform.position);
												
												TurnController.rovers [lastXPos,lastYPos].transform.position = destinationPosition; 
												selection=tile;
												
												if(lastYPos<tile.getYPos()){
													TurnController.rovers[lastXPos,lastYPos].transform.rotation = Quaternion.Euler(new Vector3(0,90,0));
												}
												
												if(lastXPos<tile.getXPos()){
													TurnController.rovers[lastXPos,lastYPos].transform.rotation = Quaternion.Euler(new Vector3(0,180,0));
												}
												if(lastXPos>tile.getXPos()){
													TurnController.rovers[lastXPos,lastYPos].transform.rotation = Quaternion.Euler(new Vector3(0,0,0));
												}
												if(lastYPos>tile.getYPos()){
													TurnController.rovers[lastXPos,lastYPos].transform.rotation = Quaternion.Euler(new Vector3(0,270,0));
												}
												TurnController.rovers [tile.getXPos(), tile.getYPos()] = TurnController.rovers [lastXPos, lastYPos];
												TGMap.map.GetTileAt(tile.getXPos(), tile.getYPos()).updateHasRover(selection.getHasRover());
												TGMap.map.GetTileAt(lastXPos,lastYPos).updateHasRover(null);
												TurnController.rovers [lastXPos, lastYPos] = null;
												lastRoverPosition=destinationPosition;
												lastXPos=tile.getXPos();
												lastYPos=tile.getYPos();
											}
											Debug.Log(" " + i + " ");
											i++;
										}
										/*
										Vector3 destinationPosition = TGMap.elevationMap [(int)currentTileCoord.x, (int)currentTileCoord.z].transform.position;
										TurnController.rovers [selectionX, selectionY].transform.position = destinationPosition; 
										TurnController.rovers [(int)currentTileCoord.x, (int)currentTileCoord.z] = TurnController.rovers [selectionX, selectionY];
										*/
										//TurnController.rovers [selectionX, selectionY] = null;
										break;
									}
								}
							}
						}
					}
				}
				else{ //If hover over UI element turns selection cube Clear
					foreach (Transform child in selectionCube) { 
						child.renderer.material.color = new Color (0, 0, 0, 0);
					}
				}
			}
			updateScoreText();

			//GameOver Message
			if(basepop.getPopulation() == 0){
				//changes to GameOver Scene which is Scene 2
				//gm.changeToScene(2);

			}
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
		if (build.getStatus () == "Constructed" && build.getLevel () == 1) {
			if (resource >= build.getCost ()) {
				//subtract cost from resources
				resource = resource - build.getCost ();
				Debug.Log ("cost:" + build.getCost ());
				//update resource in player
				PlayerInfo.player.updateBuildingResources (resource);
				Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources ());
				//update to new level
				build.updateLevel (build.getLevel () + 1);
				//update cost to next upgrade
				build.updateCost (build.getCost () * 2);
				Debug.Log ("cost for next level:" + build.getCost ());
				build.updateStatus ("Upgrading to " + build.getLevel ());
				PlayerInfo.player.insertUpgrading(build);
				showBuildingStats (build);
			} else {
				bitext.GetComponent<Text> ().text = "Not enough resource!";
				btnUpgrade.SetActive (false);
			}
		} else if (build.getStatus () == "Constructed" && build.getLevel () == 2) {
			if (resource >= build.getCost ()) {
				//subtract cost from resources
				resource = resource - build.getCost ();
				Debug.Log ("cost:" + build.getCost ());
				//update resource in player
				PlayerInfo.player.updateBuildingResources (resource);
				Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources ());
				//update to new level
				build.updateLevel (build.getLevel () + 1);
				//update cost to next upgrade
				build.updateCost (build.getCost () * 2);
				Debug.Log ("cost for next level:" + build.getCost ());
				build.updateStatus ("Upgrading to " + build.getLevel ());
				
				if(build is Base){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Base") + 2);
				}else if(build is Beacon){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Beacon") + 2);
				}else if(build is Farm){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Farm") + 2);
				}else if(build is ResearchLab){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Research Lab") + 2);
				}else if(build is Warehouse){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Warehouse") + 2);
				}else if(build is Factory){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Factory") + 2);
				}else if(build is Powerplant){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Power Plant") + 2);
				}else if(build is Magnetosphere){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Magnetosphere") + 2);
				}else if(build is ChemistryPlant){
					build.updateTurnsToUpgrade(PlayerInfo.player.getTurnsToBuildAtLevel1("Chemistry Plant") + 2);
				}else if(build is Rover){
				}
				PlayerInfo.player.insertUpgrading(build);
				showBuildingStats (build);
			} else {
				bitext.GetComponent<Text> ().text = "Not enough resource!";
				btnUpgrade.SetActive (false);
			}
		}
	}
	
	//Upgrades the textboxes on the UI
	public void updateScoreText(){
		waterScore.GetComponent<Text> ().text = "" + PlayerInfo.player.getWater();
		foodScore.GetComponent<Text> ().text = "" + PlayerInfo.player.getFood();
		buildingScore.GetComponent<Text> ().text = "" + PlayerInfo.player.getBuildingResources();
		researchScore.GetComponent<Text> ().text = "" + PlayerInfo.player.getResearch();
	}

	void updateTerraformingText(){
		marsText1.GetComponent<Text> ().text = PlayerInfo.mars.marsStats ();
		marsText2.GetComponent<Text> ().text = "Number of Factories :" + PlayerInfo.player.getFactory ().Count + "\nNumber of Chemistry Plants: " + PlayerInfo.player.getChemistryPlants ().Count;
	}

	void updateTipText(){
		baseText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Base") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Base");
		beaconText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Beacon") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Beacon");
		chemText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Chemistry Plant") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Chemistry Plant");
		factoryText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Factory") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Factory");
		farmText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Farm") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Farm");
		magnetoText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Magnetosphere") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Magnetosphere");
		powerText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Power Plan") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Power Plan");
		labText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Research Lab") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Research Lab");
		roverText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Rover") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Rover");
		warehouseText.GetComponent<Text> ().text = "Cost: " + PlayerInfo.player.getCostAtLevel1 ("Warehouse") + ", Turns: " + PlayerInfo.player.getTurnsToBuildAtLevel1 ("Warehouse");
	}
	
	public void buildBuilding(string type){
		place = type;
		//Building check = TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.z).getBuilding();
		//if(check==null){
		resource = PlayerInfo.player.getBuildingResources ();
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
			showWarnMessage ();
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
		if (b is Magnetosphere || b.getLevel() == 3 || b.getStatus() != "Constructed") {
			btnUpgrade.SetActive (false);
		} else {
			btnUpgrade.SetActive (true);
		}
	}


	void showWarnMessage(){
		warnPanel.SetActive (true);
		warnText.SetActive (true);
		warnText.GetComponent<Text>().text = "Not enough resource to build!";
	}
	
	void hideWarnMessage(){
		warnPanel.SetActive (false);
		warnText.SetActive (false);
	}
	
	void buildBase(){
		newBuilding = (GameObject)Instantiate (Resources.Load("basePrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		//Debug.Log ("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		
	}
	void buildBasePrt2(){
		Base newBuildingInfo = new Base ("Base", PlayerInfo.player.getCostAtLevel1 (place), PlayerInfo.player.getTurnsToBuildAtLevel1(place), 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 2);
		Debug.Log ("Creating new building info: " + newBuildingInfo.getName () + " " + newBuildingInfo.getCost () + " " + newBuildingInfo.getTurnsToBuild () + " " + newBuildingInfo.getLevel () + " " + newBuildingInfo.getPowered () + " " + newBuildingInfo.getPopulation ());
		TGMap.map.GetTileAt ((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding (newBuildingInfo);
		PlayerInfo.player.insertBase (newBuildingInfo);
		audio.clip = baseSound;
		audio.Play();
		//Debug.Log ("After insert, number of bases: " + PlayerInfo.player.getBases ().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log ("After insert: " + PlayerInfo.player.getConstructing ().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildBeacon(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("BeaconPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		
	}
	void buildBeaconPrt2(){
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Beacon newBuildingInfo = new Beacon("Beacon", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertBeacon(newBuildingInfo);
		audio.clip = beaconSound;
		audio.Play();
		//Debug.Log("After insert, number of beacons: " + PlayerInfo.player.getBeacons().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildFarm(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("FarmPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		
	}
	void buildFarmPrt2(){
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Farm newBuildingInfo = new Farm("Farm", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 10);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertFarm(newBuildingInfo);
		audio.clip = farmSound;
		audio.Play();
		//Debug.Log("After insert, number of farms: " + PlayerInfo.player.getFarms().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildResearchLab(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("ResearchLabPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		
	}
	void buildResearchLabPrt2(){
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		ResearchLab newBuildingInfo = new ResearchLab("Research Lab", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 1, 1);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertResearchLab(newBuildingInfo);
		audio.clip = researchLabSound;
		audio.Play();
		//Debug.Log("After insert, number of research labs: " + PlayerInfo.player.getResearchlabs().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildWarehouse(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("WarehousePrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Debug.Log ("Creating warehouse!");
	}
	void buildWarehousePrt2(){
		Warehouse newBuildingInfo = new Warehouse("Warehouse", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToBuild() + " " + newBuildingInfo.getLevel() + " " + newBuildingInfo.getPowered());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertWarehouse(newBuildingInfo);
		audio.clip = warehouseSound;
		audio.Play();
		//Debug.Log("After insert, number of warehouses: " + PlayerInfo.player.getWarehouses().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo); 
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildFactory(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("FactoryPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		
	}
	void buildFactoryPrt2(){
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Factory newBuildingInfo = new Factory("Factory", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 0.0003f);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getReleaseAmount());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertFactory(newBuildingInfo);
		audio.clip = factorySound;
		audio.Play();
		//Debug.Log("After insert, number of factories: " + PlayerInfo.player.getFactory().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildPowerPlant(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("PowerPlantPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		
	}
	void buildPowerPlantPrt2(){
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		Powerplant newBuildingInfo = new Powerplant("Power Plant", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 0);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertPowerplant(newBuildingInfo);
		audio.clip = powerPlantSound;
		audio.Play();
		//Debug.Log("After insert, number of power plants: " + PlayerInfo.player.getPowerplant().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildMagnetosphere(){
		//Debug.Log ("The building type you've selected is not yet implemented.");
		newBuilding = (GameObject)Instantiate(Resources.Load("MagnetosphereMachinePrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		
	}
	void buildMagnetospherePrt2(){
		Magnetosphere newBuildingInfo = new Magnetosphere("Magnetosphere", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 5);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getTurnsToTurnOnMagnetosphere());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertMagnetosphere(newBuildingInfo);
		audio.clip = magnetosphereMachineSound;
		audio.Play();
		//Debug.Log("After insert, number of magnetospheres: " + PlayerInfo.player.getMagnetosphere().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void buildChemicalPlant(){
		//Debug.Log ("The building type you've selected is not yet implement.");
		newBuilding = (GameObject)Instantiate(Resources.Load("ChemicalPlantPrefab"), new Vector3 ((currentTileCoord.x + 0.5f), currentTileCoord.y, (currentTileCoord.z + 0.5f)) * 3f, Quaternion.identity);
		//Debug.Log("Creating new building at coords: " + selectedTileCoord.x + "," + selectedTileCoord.z);
		
	}	
	void buildChemicalPlantPrt2(){
		ChemistryPlant newBuildingInfo = new ChemistryPlant("Chemistry Plant", PlayerInfo.player.getCostAtLevel1 (place), 5, 1, (int)currentTileCoord.x, (int)currentTileCoord.z, 0, 0.0003f);
		Debug.Log("Creating new building info: " + newBuildingInfo.getName() + " " + newBuildingInfo.getCost() + " " + newBuildingInfo.getReleaseAmount());
		TGMap.map.GetTileAt((int)selectedTileCoord.x, (int)selectedTileCoord.z).updateBulding(newBuildingInfo);
		PlayerInfo.player.insertChemistryPlant(newBuildingInfo);
		audio.clip = chemicalPlantSound;
		audio.Play();
		//Debug.Log("After insert, number of chemistry plants: " + PlayerInfo.player.getChemistryPlants().Count);
		PlayerInfo.player.insertConstructing (newBuildingInfo);
		//Debug.Log("After insert: " + PlayerInfo.player.getConstructing().Count);
		newBuildingInfo.updateStatus ("Constucting level 1");
		newBuildingInfo.updateTurnsToUpgrade (PlayerInfo.player.getTurnsToBuildAtLevel1 (place) + 1);
		//take off the cost to build level 1
		resource = PlayerInfo.player.getBuildingResources ();
		resource -= newBuildingInfo.getCost();
		Debug.Log ("cost:" + newBuildingInfo.getCost());
		PlayerInfo.player.updateBuildingResources(-newBuildingInfo.getCost());
		Debug.Log ("resource left:" + PlayerInfo.player.getBuildingResources());
		PlayerInfo.buildings[(int)currentTileCoord.x,(int)currentTileCoord.z] = newBuilding;
		//update the cost to upgrade to level2
		newBuildingInfo.updateCost (newBuildingInfo.getCost () * 2);
		newBuilding = null;
	}
	void recolorRange(){
		int range;
		if (lastSelected is Beacon) {
			Beacon beac = lastSelected as Beacon;
			range = beac.determineRange();
			beac.hideRange(range);
		}
		else if (lastSelected is Base) {
			Base sBase = lastSelected as Base;
			range = sBase.determineRange();
			sBase.hideRange(range);
		}
		else if (lastSelected is Warehouse) {
			Warehouse warehouse = lastSelected as Warehouse;

		}
		else if (lastSelected is Powerplant) {
			Powerplant power = lastSelected as Powerplant;
			range = power.determineRange();
			power.hideRange(range);
		}
	}
	protected List<TDTile> FindPath(TDTile origin, TDTile goal){
		AStar pathFinder = new AStar ();
		pathFinder.FindPath (origin, goal, TGMap.map.getMap_data (),goal.isWalkable());
		return pathFinder.CellsFromPath ();
	}
}

