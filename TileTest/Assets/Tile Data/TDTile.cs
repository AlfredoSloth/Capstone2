using UnityEngine;

public class TDTile{

	public const int TILE_FOG = 0;
	public const int TILE_STANDARD = 1;
	public const int TILE_WATER = 2;
	public const int TILE_MOUNTAIN = 3;
	public const int TILE_HILL = 4;
	public const int TILE_ICE = 5;

	private int terrainType;
	private int elevation;
	private string resource;

	public TDTile(){
		setTerrainType (Random.Range (TILE_FOG, TILE_HILL));

		setElevation();

		setResource();
		
	}
	private void setTerrainType(int type){
		this.terrainType = type;
	}
	private void setResource(){
	
	}
	private void setElevation(){
	
	
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
}
