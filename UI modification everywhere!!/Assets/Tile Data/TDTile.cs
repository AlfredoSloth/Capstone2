using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TDTile{
	
	public const int TILE_MOUNTAIN = 0;
	public const int TILE_FLAT = 1;
	public const int TILE_HILLS = 2;
	public const int TILE_VALLEY = 3;
	
	private int terraformed;
	private int terrainType;
	private List<TileResource> resources;
	private Building hasBuilding;
	private Rover hasRover;
	private bool isSafe;
	private bool hasIce;
	private bool isVisable;
	private Vector2 baseVector;
	public TDTile(int lowerOrHigher){
		setTerrainType (lowerOrHigher);

		
		setResources();
		setHasBuilding ();
		setTerriformed (/*terriform*/);
		setIsSafe ();
		setHasIce();
		hasRover = null;
		isVisable = false;
		baseVector = new Vector2(-1f,-1f);
	}
	private void setTerrainType(int lowerOrHigher){
		int type = Random.Range (1,100);
		if (lowerOrHigher == 0) {
			if (type >= 1 && type <= 40) {
				this.terrainType=1;
			} else if (type > 40 && type <= 80) {
				this.terrainType = 2;
			}else if (type > 80 && type<= 90) {
				this.terrainType = 3;
			}
		} else {
			if (type >= 1 && type <= 80) {
				this.terrainType=1;
			} else if (type > 85 && type <= 87) {
				this.terrainType=3;
			} else if (type > 87 && type <= 95) {
				this.terrainType=0;
			} else if (type > 95 && type <= 100) {
				this.terrainType=2;
			}
		}
	}
	private void setResources(){
		resources = new List<TileResource> ();
		var resourceType = Random.Range (1,1000);
		if (resourceType > 1 && resourceType < 750) {
			TileResource none = new TileResource("none", 0);
			resources.Add(none);
		} else if (resourceType >= 750 && resourceType < 900) {
			TileResource building = new TileResource("building", Random.Range(10,20));
			resources.Add(building);
			int secondResource = Random.Range (1,10);
			if(secondResource>=1&&secondResource<=5){
				TileResource water = new TileResource("water", Random.Range(5,10));
				resources.Add(water);
			}
		} else if (resourceType >= 900 && resourceType <= 1000) {
			TileResource water = new TileResource("water", Random.Range(5,10));
			resources.Add(water);
			int secondResource = Random.Range (1,10);
			if(secondResource>=1&&secondResource<=5){
				TileResource building = new TileResource("building", Random.Range(10,20));
				resources.Add(building);
			}
		}
	}
	private void setHasBuilding(){
		hasBuilding = null;
	}
	private void setTerriformed(/*int terriform*/){
		//this.terraformed = terriform
	}
	private void setIsSafe(){
		isSafe = false;
	}
	private void setHasIce(){
		hasIce = false;
	}
	public int getTerrainType(){
		return terrainType;
	}
	public List<TileResource> getResources(){
		return resources;
	}
	public int getTerriform(){
		return terraformed;
	}
	public Building getBuilding(){
		return hasBuilding;
	}
	public bool getIsSafe(){
		return isSafe;
	}
	public bool getHasIce(){
		return hasIce;
	}
	public Rover getHasRover(){
		return hasRover;
	}
	public bool getIsVisable(){
		return isVisable;
	}
	public Vector2 getIsGathered(){
		return baseVector;
	}
	public void updateIsSafe(bool changedValue){
		this.isSafe = changedValue;
	}
	public void updateHasIce(bool changedValue){
		this.hasIce = changedValue;
	}
	public void updateIsGathered(Vector2 baseVector){
		this.baseVector = baseVector;
	}
	public void updateBulding(Building newBuilding){
		this.hasBuilding = newBuilding;
	}
	public void updateTerriform(int newTerriform){
		
		this.terraformed = newTerriform;
	}
	public void updateTerrainType(int terrainType){
		this.terrainType = terrainType;
	}
	public void updateHasRover(Rover newValue){
		this.hasRover = newValue;
	}
	public void updateIsVisable(bool newValue){
		this.isVisable = newValue;
	}
	
	public void updateResourceAmount(string resource, int newValue){
		List<TileResource> check = getResources (); 
		foreach (TileResource tileResource in check){
			if(tileResource.resource.Equals(resource)){
				tileResource.resourceAmount = newValue;
			}
		}
		this.resources = check;
	}
	public void addResouce(string resource, int newValue){
		TileResource newResource = new TileResource (resource, newValue);
		resources.Add(newResource);
	}
	public void removeResource(string resource){
		List<TileResource> check = getResources (); 
		TileResource remove;
		foreach (TileResource tileResource in check){
			if(tileResource.resource.Equals(resource)){
				remove = tileResource;
				this.resources.Remove(remove);
			}
		}
	}
	
}
