using UnityEngine;

public class TDTile{
	
	public const int TILE_FOG = 0;
	public const int TILE_STANDARD = 1;
	public const int TILE_WATER = 2;
	public const int TILE_MOUNTAIN = 3;
	public const int TILE_HILL = 4;
	public const int TILE_ICE = 5;
	
	private int terraformed;
	private int terrainType;
	private int elevation;
	private string resource;
	private Building hasBuilding;
	
	public TDTile(/*int terriform*/){
		setTerrainType (Random.Range (TILE_FOG, TILE_HILL));
		
		setElevation();
		
		setResource();
		setHasBuilding ();
		setTerriformed (/*terriform*/);
	}
	private void setTerrainType(int type){
		this.terrainType = type;
	}
	private void setResource(){
		
	}
	private void setElevation(){
		
		
	}
	private void setHasBuilding(){
		hasBuilding = null;
	}
	private void setTerriformed(/*int terriform*/){
		//this.terraformed = terriform
	}
	
	public int getTerrainType(){
		return terrainType;
	}
	public int getElevation(){
		return elevation;
	}
	public string getResource(){
		return resource;
	}
	public int getTerriform(){
		return terraformed;
	}
	public Building getBuilding(){
		return hasBuilding;
	}
	public void updateBulding(Building newBuilding){
		this.hasBuilding = newBuilding;
	}
	
	
	public void updateTerriform(int newTerriform){
		
		this.terraformed = newTerriform;
	}
	
}
