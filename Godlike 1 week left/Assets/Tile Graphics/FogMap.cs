using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class FogMap : MonoBehaviour {
	TGMap _tileMapGfx;
	void Start(){
		_tileMapGfx = GetComponent<TGMap> ();
	}
	public void checkFog(){
		//Debug.Log (_tileMapGfx);
		for (int x = 0; x<TGMap.size_x; x++) {
			for (int y = 0; y<TGMap.size_z; y++) {
				if(TGMap.map.GetTileAt(x,y).getHasRover()!=null||TGMap.map.GetTileAt(x,y).getBuilding()!=null){
					TGMap.map.GetTileAt(x,y).updateIsVisable(true);
					if(TGMap.elevationMap[x,y].FindChild("pCube4")){
						Transform elevationTile = TGMap.elevationMap[x,y].FindChild("pCube4");
						changeOriginColor(TGMap.map.GetTileAt(x,y), elevationTile);
					}
					else{
						changeOriginColor(TGMap.map.GetTileAt(x,y), TGMap.elevationMap[x,y]);
					}
					checkFog2(x,y);
				}
			}
		}
	}
	public void checkFog2(int checkX, int checkY){
		for(int x = checkX-2; x<checkX+3; x++) {
			for (int y = checkY-2; y<checkY+3; y++) {
				//Debug.Log("checking surrounding fog at coords: " + x + " " + y);
				if(TGMap.map.GetTileAt(x,y)!=null){
					if(TGMap.map.GetTileAt(x,y).getIsVisable()==false){
						TGMap.map.GetTileAt(x,y).updateIsVisable(true);
						int tileType = TGMap.map.GetTileAt(x,y).getTerrainType();
						bool iceCheck = TGMap.map.GetTileAt(x,y).getHasIce();
						List<TileResource> check = TGMap.map.GetTileAt(x,y).getResources();
						int alreadyOneIcon=0;
						foreach(TileResource tileResource in check){
							if(tileResource.resource.Equals("none")){
							}
							else if(tileResource.resource.Equals("building")){
								Vector3 location = TGMap.elevationMap[x,y].transform.position;
								if(alreadyOneIcon==1){
									location += new Vector3(-0.5f,1.5f,0);
								}
								else{
									location += new Vector3(0,1.5f,0);
								}
								GameObject resourceIcon = Instantiate(Resources.Load("BuildingResourcePrefab"), location, Quaternion.Euler(new Vector3(-42,180,0))) as GameObject;
								//Transform thing = resourceIcon.;
								//Debug.Log(resourceIcon);
								Material newMaterial;
								newMaterial = new Material(Shader.Find("Transparent/Diffuse"));
								foreach(Transform shape in resourceIcon.transform){
									shape.renderer.material = newMaterial;
									shape.renderer.material.color = new Color32(255,174,0,180);
								}
								//Debug.Log("Checking " + x + y);
								alreadyOneIcon=1;
								//Debug.Log(resourceIcon);
								
							}
							else if(tileResource.resource.Equals("water")){
								//Debug.Log("Checking " + x + y);
								Vector3 location = TGMap.elevationMap[x,y].transform.position;
								if(alreadyOneIcon==1){
									location += new Vector3(0.5f,1.8f,0);
								}
								else{
									location += new Vector3(0.5f,1.8f,0);
								}
								GameObject resourceIcon = Instantiate(Resources.Load("WaterPrefab"), location, Quaternion.Euler(new Vector3(42,0,0))) as GameObject;
								//Transform thing = resourceIcon.;
								//Debug.Log(resourceIcon);
								Material newMaterial;
								newMaterial = new Material(Shader.Find("Transparent/Diffuse"));
								foreach(Transform shape in resourceIcon.transform){
									shape.renderer.material = newMaterial;
									shape.renderer.material.color = new Color32(0,181,255,50);

								}
							}
						}
						if(TGMap.elevationMap[x,y].FindChild("pCube4")){
							Transform tile = TGMap.elevationMap[x,y].FindChild("pCube4");
							updateColor(tileType, tile, iceCheck);
							//updateIcons(x, y);
						}
						else{
							updateColor(tileType, TGMap.elevationMap[x,y], iceCheck);
							//updateIcons(x, y);

						}
					}
				}
			}
		}
	}
	public void updateColor(int tileType, Transform tile, bool iceCheck){
		Color32 newColor = new Color32();
		foreach(TileColors tilecolor in TGMap.tileColors){
			if(tileType==0&&tilecolor.tileName.Equals("mountain")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==1&&tilecolor.tileName.Equals("flat")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==2&&tilecolor.tileName.Equals("hill")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==3&&tilecolor.tileName.Equals("valley")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(iceCheck==true&&tilecolor.tileName.Equals("ice")){
				newColor=tilecolor.color;
			}
		}
		tile.renderer.material.color = newColor;
	}
	public void changeOriginColor(TDTile tile, Transform elevationTile){
		Color32 newColor = new Color32();
		int tileType = tile.getTerrainType ();
		bool iceCheck = tile.getHasIce ();
		foreach (TileColors tilecolor in TGMap.tileColors) {
			if(tileType==0&&tilecolor.tileName.Equals("mountain")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==1&&tilecolor.tileName.Equals("flat")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==2&&tilecolor.tileName.Equals("hill")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(tileType==3&&tilecolor.tileName.Equals("valley")&&iceCheck==false){
				newColor=tilecolor.color;
			}
			else if(iceCheck==true&&tilecolor.tileName.Equals("ice")){
				newColor=tilecolor.color;
			}
		}
		elevationTile.renderer.material.color = newColor;
	}
	public void updateIcons(int x, int y){
		List<TileResource> check = TGMap.map.GetTileAt (x, y).getResources();
		foreach (TileResource tileResource in check) {
			if(tileResource.resource.Equals("water")){
				foreach (TileColors tilecolor in TGMap.tileColors) {
					if(tilecolor.tileName.Equals("water")){
						Color32 waterColor = tilecolor.color;
						Debug.Log (waterColor);
						Icon iconCoords = TGMap.resourceIcons[x,y];
						Debug.Log (iconCoords);
						List<ResourceIcon> icons = iconCoords.icons;
						foreach(ResourceIcon resource in icons){
							if(resource.name.Equals("water")){
								foreach(Transform shape in resource.icon.transform){
									Debug.Log (shape.ToString());
									shape.renderer.material.color = waterColor;
								}
							}
						}
					}
				}
			}
			else if(tileResource.resource.Equals("building")){
				foreach (TileColors tilecolor in TGMap.tileColors) {
					if(tilecolor.tileName.Equals("building")){
						Color32 buildingColor = tilecolor.color;
						Debug.Log (buildingColor);
						Icon iconCoords = TGMap.resourceIcons[x,y];
						Debug.Log (iconCoords);
						List<ResourceIcon> icons = iconCoords.icons;
						foreach(ResourceIcon resource in icons){
							if(resource.name.Equals("water")){
								foreach(Transform shape in resource.icon.transform){
									Debug.Log (shape.ToString());
									shape.renderer.material.color = buildingColor;
								}
							}
						}
					}
				}
			}
		}
	}
}
