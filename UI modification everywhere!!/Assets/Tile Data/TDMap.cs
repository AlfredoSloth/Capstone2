using UnityEngine;
public class TDMap {
	private TDTile[,] map_data;
	private int size_x;
	private int size_y;
	//constructor for map data
	public TDMap(int sx, int sy){
		size_x = sx;
		size_y = sy;
		map_data = new TDTile[sx, sy];
		setTiles ();
	}
	private void setTiles(){
		//each tile coordinate has data associated with it
		int width = getSize_x ();
		int height = getSize_y ();
		for(int x=0;x<width;x++){
			for(int y=0;y<height;y++){
				if(y>=0 && y < size_y/3){
					map_data[x,y] = new TDTile(0);		
				}
				else{
					map_data[x,y] = new TDTile(1);	
				}
			}
		}
		for (int x=0; x<width; x++) {
			for (int y=0; y<height; y++) {
				if(GetTileAt(x,y).getTerrainType()==0||GetTileAt(x,y).getTerrainType()==2){
					secondPassTerrainType(x, y, GetTileAt(x,y).getTerrainType());
				}
			}
		}
		
	}
	public void secondPassTerrainType(int xpos, int ypos, int terrainType){
		//int 
		for (int x=(xpos-2); x<(xpos+1); x++) {
			for (int y=(ypos-2); y<(ypos+1); y++) {
				if(GetTileAt(x,y)!=null&&GetTileAt(x,y).getTerrainType()!=0&&x!=xpos&&y!=ypos){
					int check = Random.Range(1,100);
					if(check>=1&&check<=10){
						if(terrainType==0)
							GetTileAt(x,y).updateTerrainType(1);
						else if(terrainType==2)
							GetTileAt(x,y).updateTerrainType(2);
					}
				}
			}
		}
	}
	//get tile information
	public TDTile GetTileAt(int x, int y){
		if (x < 0 || x >= size_x || y < 0 || y >= size_y) {
			return null;
		}
		return map_data[x,y];
	}
	public int getSize_x (){
		return size_x;
	}
	public int getSize_y (){
		return size_y;
	}
}
