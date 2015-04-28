using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Base : Building {
	private int population;
	private Warehouse supplier;
	private int turnsFed;
	private List<Building> buildingsBeingWorked;
	public Base(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int population) : base(name, cost, turnsToBuild, level, x, y, powered){
		setPopulation (population);
		setSupplier ();
		setTurnsFed ();
		buildingsBeingWorked = new List<Building>();
	}

	private void setSupplier(){
		this.supplier = null;
	}
	public Warehouse getSupplier(){
		return this.supplier;
	}
	public void updateSupplier(){
		int range = determineRange ();
		
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				//(get tile data and see if there is a building or not)
				Building check = TGMap.map.GetTileAt(x, y).getBuilding();
				if(check!=null){
					//check if building is of type Base
					if(check is Warehouse){
						//add base to supplying attribute
						this.supplier = check as Warehouse;
					}
				}
			}
		}
		/*foreach (Warehouse warehouse in PlayerInfo.player.getWarehouses().ToArray()) {
			if (warehouse.getName () == name){
				this.supplier = warehouse;
			}
		}*/
		
	}

	private void setPopulation(int population){
		this.population = population;
	}
	public int getPopulation(){
		return this.population;
	}
	public void updatePopulation(int newPopulation){
		this.population = newPopulation;
	}

	public List<Building> getBuildingsBeingWorked(){
		return this.buildingsBeingWorked;
	}
	private void setTurnsFed(){
		this.turnsFed = 0;
	}
	public int getTurnsFed(){
		return this.turnsFed;
	}
	public void updateTurnsFed(int turns){
		this.turnsFed = turns;
	}
	public void insertBuilding(Building newBuilding){
		buildingsBeingWorked.Add (newBuilding);
	}
	public void workTiles(){
		int range = determineRange ();
		int resourceSum = 0;
		int populationToWork = getPopulation ();
		populationToWork -= getBuildingsBeingWorked().Count;
		for (int x=getX ()-range; x<getX ()+range+1; x++) {
			for (int y=getY ()-range; y<getY ()+range+1; y++) {
				Building check = TGMap.map.GetTileAt(x,y).getBuilding();
				//Debug.Log(check);
				Debug.Log(buildingsBeingWorked.Count);
				if(check!=null&&populationToWork!=0&&!(check is Base)&&check.getWorked()==false&&!(check is Beacon)&&check.getTurnsToBuild()==0){
					if(check is Farm)
						Debug.Log("found a farm");
					check.updateWorked(true);
					insertBuilding(check);
				}
			}
		}
	}
	public int gatherBuildingResources(){
		int range = determineRange ();
		int resourceSum = 0;
		for (int x=getX ()-range; x<getX ()+range+1; x++) {
			for (int y=getY ()-range; y<getY ()+range+1; y++) {
				Vector2 check = TGMap.map.GetTileAt(x,y).getIsGathered();
				if((int)check.x==-1&&(int)check.y==-1){
					Vector2 baseVector = new Vector2(getX(),getY());
					TGMap.map.GetTileAt(x,y).updateIsGathered(baseVector);
					List<TileResource> resources = TGMap.map.GetTileAt(x,y).getResources();
					foreach(TileResource resource in resources){
						//building
						if(resource.resource.Equals("building")){
							resourceSum += resource.resourceAmount;
						}
					}
				}
				else if((int)check.x==getX()&&(int)check.y==getY ()){
					List<TileResource> resources = TGMap.map.GetTileAt(x,y).getResources();
					foreach(TileResource resource in resources){
						//building
						if(resource.resource.Equals("building")){
							resourceSum += resource.resourceAmount;
						}
					}
				}
			}
		}
		Debug.Log("Building Resources this turn: "+resourceSum);
		return resourceSum;
	}
	public int gatherWater(){
		int resourceSum=0;
		int range = determineRange ();
		for (int x=getX ()-range; x<getX ()+range+1; x++) {
			for (int y=getY ()-range; y<getY ()+range+1; y++) {
				Vector2 check = TGMap.map.GetTileAt(x,y).getIsGathered();
				if((int)check.x==-1&&(int)check.y==-1){
					Vector2 baseVector = new Vector2(getX(),getY());
					TGMap.map.GetTileAt(x,y).updateIsGathered(baseVector);
					List<TileResource> resources = TGMap.map.GetTileAt(x,y).getResources();
					foreach(TileResource resource in resources){
						//water
						if(resource.resource.Equals("water")){
							resourceSum += resource.resourceAmount;
						}
					}
				}
				else if((int)check.x==getX()&&(int)check.y==getY ()){
					List<TileResource> resources = TGMap.map.GetTileAt(x,y).getResources();
					foreach(TileResource resource in resources){
						//water
						if(resource.resource.Equals("water")){
							resourceSum += resource.resourceAmount;
						}
					}
				}

			}
		}
		//Debug.Log("Water this turn: "+resourceSum);
		return resourceSum;
	}

	public override string buildingStats(){
		string stat;
		if (this.getPowered() == 0) {
			stat = "false";
		} else if(this.getPowered() == 1) {
			stat = "true";
		} else {
			stat = "N/A";
		}
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nStatus: " + this.getStatus() + "\nPowered: " + stat +  "\nPopulation: " + this.getPopulation();
	}
	public void displayRange(){
		int range = determineRange ();
		
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				if(TGMap.elevationMap[x,y].FindChild("pCube4")){
					Transform thingything = TGMap.elevationMap[x,y].FindChild("pCube4");
					thingything.renderer.material.color = new Color32(8,142,255,255);
				}
				else{
					TGMap.elevationMap[x,y].renderer.material.color = new Color32(8,142,255,255);
				}
			}
		}
	}
	public int determineRange(){
		int level = getLevel ();
		int range = 0;
		/*level 1: range=2
		level 2: range=3
		level 3: range=4*/
		
		switch (level) {
		case 1:
			range = 2;
			break;
		case 2:
			range = 3;
			break;
		case 3:
			range = 4;
			break;
		default:
			break;
		}
		
		return range;
	}
}
