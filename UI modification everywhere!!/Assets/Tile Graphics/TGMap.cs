using UnityEngine;
using System.Collections;
using System.Collections.Generic;
//[ExecuteInEditMode]
[RequireComponent (typeof(MeshFilter))]
[RequireComponent (typeof(MeshCollider))]
[RequireComponent (typeof(MeshRenderer))]
public class TGMap : MonoBehaviour {

	public static int size_x = 100; //number of tiles left to right
	public static int size_z = 50; //number of tiles top to bottom
	public float tileSize = 1.0f;
	public static TDMap map;
	public Texture2D terrainTiles;
	public int tileResolution;
	public Transform mountainTile1;
	public Transform mountainTile2;
	public Transform mountainTile3;
	public Transform flatTile;
	public Transform hillTile1;
	public Transform hillTile2;
	public Transform hillTile3;
	public Transform valleyTile;
	public static Transform[,] elevationMap;
	public Transform startTile;
	public Material Hills;
	public Texture valleyTexture;
	public static List<TileColors> tileColors;
	public static Icon[,] resourceIcons;

	class IcySides{
		public bool left;
		public bool right;
		public bool top;
		public bool bottom;
		public IcySides(){
			top=true;
			right=true;
			left=true;
			bottom=true;
		}
	}
	// Use this for initialization
	void Start () {
		BuildMesh ();
		BuildElevation ();
		PlayerInfo.createStartLocation ();
		resourceIcons = new Icon[size_x,size_z];
	}
	//chop up textures for tiles
	Color[][] ChopUpTiles(){
		int numTilesPerRow = terrainTiles.width / tileResolution;
		int numRows = terrainTiles.height / tileResolution;

		Color[][] tiles = new Color[numTilesPerRow * numRows][];

		for(int y=0; y<numRows; y++){
			for(int x=0; x<numTilesPerRow; x++){
				tiles[y*numTilesPerRow + x] = terrainTiles.GetPixels(x*tileResolution, y*tileResolution, tileResolution, tileResolution);
			}
		}
		return tiles;

	}

	void BuildTexture(){

		map = new TDMap (size_x, size_z);
		renderer.material = Hills;
		Debug.Log ("Done Texture!");
	}

	public void BuildMesh(){

		int numTiles = size_x * size_z;
		int numTris = numTiles * 2;

		int vsize_x = size_x + 1;
		int vsize_z = size_z + 1;
		int numVerts = vsize_x * vsize_z;

		//generate mesh data
		Vector3[] vertices = new Vector3[numVerts];
		Vector3[] normals = new Vector3[numVerts];
		Vector2[] uv = new Vector2[numVerts];

		int[] triangles = new int[numTris * 3];

		int x, z;
		for(z=0;z<size_z;z++){
			for (x=0; x<size_x; x++) {
				vertices[z*vsize_x + x] = new Vector3(x*tileSize, 0, z*tileSize);
				normals[z*vsize_x+x] = Vector3.up;
				uv[z*vsize_x+x] = new Vector2((float)x / size_x, (float)z / size_z);
			}
		}
		for (z=0; z<size_z; z++) {
			for (x=0; x<size_x; x++) {
				int squareIndex = z * size_x + x;
				int triOffset = squareIndex * 6;
				triangles[triOffset + 0] = z * vsize_x + x +		   0;
				triangles[triOffset + 1] = z * vsize_x + x + vsize_x + 0;
				triangles[triOffset + 2] = z * vsize_x + x + vsize_x + 1;

				triangles[triOffset + 3] = z * vsize_x + x + 		   0;
				triangles[triOffset + 4] = z * vsize_x + x + vsize_x + 1;
				triangles[triOffset + 5] = z * vsize_x + x + 		   1;
			}
		}
		//create new mesh and populate with the data
		Mesh mesh = new Mesh ();
		mesh.vertices = vertices;
		mesh.triangles = triangles;
		mesh.normals = normals;
		mesh.uv = uv;


		//assign our mesh to our filter/renderer/collider
		MeshFilter mesh_filter = GetComponent<MeshFilter> ();
		MeshRenderer mesh_renderer = GetComponent<MeshRenderer> ();
		MeshCollider mesh_collider = GetComponent<MeshCollider> ();
	
		mesh_filter.mesh = mesh;
		mesh_collider.sharedMesh = mesh;
		BuildTexture ();
	}
	void BuildElevation(){
		Vector3 startTileCoords = startTile.transform.position;
		elevationMap = new Transform[size_x,size_z];
		{
			tileColors = new List<TileColors>();
			TileColors flatColor = new TileColors();
			flatColor.tileName="flat";
			flatColor.color= new Color32(218,126,126,255);
			tileColors.Add(flatColor);
			
			TileColors mountainColor = new TileColors();
			mountainColor.tileName="mountain";
			mountainColor.color= new Color32(197,106,106,255);
			tileColors.Add(mountainColor);
			
			TileColors hillColor = new TileColors();
			hillColor.tileName="hill";
			hillColor.color= new Color32(218,126,126,255);
			tileColors.Add(hillColor);
			
			TileColors valleyColor = new TileColors();
			valleyColor.tileName="valley";
			valleyColor.color= new Color32(218,126,126,255);
			tileColors.Add(valleyColor);
			
			TileColors iceColor = new TileColors();
			iceColor.tileName="ice";
			iceColor.color= new Color32(255,255,255,255);
			tileColors.Add(iceColor);

			TileColors buildingIconColor = new TileColors();
			buildingIconColor.tileName="building";
			buildingIconColor.color = new Color32(255,174,0,180);
			tileColors.Add (buildingIconColor);

			TileColors waterIconColor = new TileColors();
			waterIconColor.tileName="water";
			waterIconColor.color = new Color32(0,181,255,50);
			tileColors.Add (waterIconColor);
		}
		//place elevation tiles with textures based on tileData
		for(int x=0;x<size_x;x++){
			for(int y=0;y<size_z;y++){
				int tileTerrainType = map.GetTileAt(x,y).getTerrainType();
				//float levelOff;
				if(tileTerrainType==0){
					int randomAsset = Random.Range(1,3);
					//Debug.Log(randomAsset);
					int whichTexture = Random.Range(1,4);
					string mountainTexture = "Textures/Mountain Texture "+whichTexture;
					string normalMountain = "Textures/NormalMaps/Mountain Texture "+whichTexture;
					Transform elevationTile;
					
					if(randomAsset==1){
						elevationTile = Instantiate (mountainTile1, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.355f;
						elevationTile.transform.position += levelOff;
						
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(mountainTexture) as Texture;
						Texture bumpMap = Resources.Load(normalMountain) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap); 
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
					else if(randomAsset==2){
						elevationTile = Instantiate (mountainTile2, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.353f;
						elevationTile.transform.position += levelOff;
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(mountainTexture) as Texture;
						Texture bumpMap = Resources.Load(normalMountain) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap);
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
					else if(randomAsset==3){
						elevationTile = Instantiate (mountainTile3, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.348f;
						elevationTile.transform.position += levelOff;
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(mountainTexture) as Texture;
						Texture bumpMap = Resources.Load(normalMountain) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap);
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
				}
				else if(tileTerrainType==1){
					Transform elevationTile = Instantiate (flatTile, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
					Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
					levelOff.y+=0.356f;
					elevationTile.transform.position += levelOff;
					Transform thingything=elevationTile.FindChild("pCube4");
					
					int whichTexture = Random.Range(1,9);
					string flatTexture = "Textures/Flat Texture "+whichTexture;
					string normalFlat = "Textures/NormalMaps/Flat Texture " + whichTexture;
					
					Material newMaterial;
					newMaterial = new Material(Shader.Find("Bumped Diffuse"));
					thingything.renderer.material = newMaterial;
					Texture bumpMap = Resources.Load(normalFlat) as Texture;
					
					thingything.renderer.material.mainTexture = Resources.Load(flatTexture) as Texture;
					thingything.renderer.material.SetTexture("_BumpMap", bumpMap);
					thingything.renderer.material.color = new Color32(0,0,0,255);
					elevationMap[x,y]= elevationTile;
				}
				else if(tileTerrainType==2){
					int randomAsset = Random.Range(1,100);
					int whichTexture = Random.Range(1,3);
					string hillTexture = "Textures/Hill Texture "+whichTexture;
					string normalHill = "Textures/NormalMaps/Hill Texture "+whichTexture;
					Transform elevationTile;
					if(randomAsset>=1&&randomAsset<=33){
						elevationTile = Instantiate (hillTile1, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.306f;
						elevationTile.transform.position += levelOff;
						
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						Texture bumpMap = Resources.Load(normalHill) as Texture;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(hillTexture) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap);
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
					else if(randomAsset>33&&randomAsset<=66){
						elevationTile = Instantiate (hillTile2, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						elevationTile.renderer.material = Hills;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.3f;
						elevationTile.transform.position += levelOff;
						
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						Texture bumpMap = Resources.Load(normalHill) as Texture;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(hillTexture) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap);
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
					else if(randomAsset>66&&randomAsset<=100){
						elevationTile = Instantiate (hillTile3, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.00f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
						Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
						levelOff.y+=0.356f;
						elevationTile.transform.position += levelOff;
						
						Material newMaterial;
						newMaterial = new Material(Shader.Find("Bumped Diffuse"));
						elevationTile.renderer.material = newMaterial;
						Texture bumpMap = Resources.Load(normalHill) as Texture;
						
						elevationTile.renderer.material.mainTexture = Resources.Load(hillTexture) as Texture;
						elevationTile.renderer.material.SetTexture("_BumpMap", bumpMap);
						elevationTile.renderer.material.color = new Color32(0,0,0,255);
						elevationMap[x,y]= elevationTile;
					}
					
				}	
				else if(tileTerrainType==3){
					Transform elevationTile = Instantiate (valleyTile, new Vector3 ((startTileCoords.x+x)+0.5f, startTileCoords.y+0.02f, (startTileCoords.z+y)+0.5f) * 3f, Quaternion.identity) as Transform;
					int whichTexture = Random.Range(1,9);
					string valleyTexture = "Textures/Flat Texture "+whichTexture;
					string normalValley = "Textures/NormalMaps/Flat Texture "+whichTexture;
					
					Vector3 levelOff = new Vector3(0.0f,0.0f,0.0f);
					levelOff.y+=0.296f;
					elevationTile.transform.position += levelOff;
					Transform thingything=elevationTile.FindChild("pCube4");
					
					Material newMaterial;
					newMaterial = new Material(Shader.Find("Bumped Diffuse"));
					thingything.renderer.material = newMaterial;
					
					thingything.renderer.material.mainTexture = Resources.Load(valleyTexture) as Texture;
					Texture bumpMap = Resources.Load(normalValley) as Texture;
					thingything.renderer.material.SetTexture("_BumpMap", bumpMap);
					thingything.renderer.material.color = new Color32(0,0,0,255);
					elevationMap[x,y]= elevationTile;
				}
				//setting up ice tiles, first pass
				if((y>=0&&y<5)||(y>=size_z-5&&y<size_z)){
					if(y==4||y==size_z-5){
						int check1 = Random.Range(1,100);
						if(check1>=1&&check1<50){
							string iceTexture = "Textures/Ice";
							if(elevationMap[x,y].FindChild("pCube4")){
								Transform thingything=elevationMap[x,y].FindChild("pCube4");
								thingything.renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
								thingything.renderer.material.color = new Color32(0,0,0,255);
							} else{
								elevationMap[x,y].renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
								elevationMap[x,y].renderer.material.color = new Color32(0,0,0,255);
							}
							map.GetTileAt(x,y).updateHasIce(true);
						}
						else{
						}
					}
					else if(y==3||y==size_z-4){
						int check2 = Random.Range(1,100);
						if((check2>=1&&check2<75)||(map.GetTileAt(x,y).getTerrainType()==0)||(map.GetTileAt(x,y).getTerrainType()==2)){
							string iceTexture = "Textures/Ice";
							if(elevationMap[x,y].FindChild("pCube4")){
								Transform thingything=elevationMap[x,y].FindChild("pCube4");
								thingything.renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
								thingything.renderer.material.color = new Color32(0,0,0,255);
							} else{
								elevationMap[x,y].renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
								elevationMap[x,y].renderer.material.color = new Color32(0,0,0,255);
							}
							map.GetTileAt(x,y).updateHasIce(true);
						}
						else{
						}
					}
					else{
						string iceTexture = "Textures/Ice";
						if(elevationMap[x,y].FindChild("pCube4")){
							Transform thingything=elevationMap[x,y].FindChild("pCube4");
							thingything.renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
							thingything.renderer.material.color = new Color32(0,0,0,255);
						} else{
							elevationMap[x,y].renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
							elevationMap[x,y].renderer.material.color = new Color32(0,0,0,255);
						}
						map.GetTileAt(x,y).updateHasIce(true);
					}
				}
			}
		}
		//set up ice tiles and rotate them if there is a Mars texture next to it
		for(int x=0;x<size_x;x++){
			for(int y=0;y<size_z;y++){
				if(map.GetTileAt(x,y).getHasIce()==true){
					IcySides check = checkSides(x,y);
					string iceTexture;
					string direction;
					//Debug.Log("Checking tile at: " + x + " "+ y + " " + check.top.ToString() + "blah");
					//no ice above
					if(check.top==false&&check.bottom==true&&check.left==true&&check.right==true){
						//Debug.Log("Tile at: " + x + " "+ y + " does not have ice above");
						iceTexture = "Textures/Ice oneSide";
						direction = "top";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice bottom
					else if(check.top==true&&check.bottom==false&&check.left==true&&check.right==true){
						//Debug.Log("Tile at: " + x + " "+ y + " does not have ice bottom");
						iceTexture = "Textures/Ice oneSide";
						direction = "bottom";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice left
					else if(check.top==true&&check.bottom==true&&check.left==false&&check.right==true){
						//Debug.Log("Tile at: " + x + " "+ y + " does not have ice left");
						//Debug.Log(elevationMap[x,y].transform.rotation.w + " w " +elevationMap[x,y].transform.rotation.x + " x " + elevationMap[x,y].transform.rotation.z + " z " + elevationMap[x,y].transform.rotation.y + "y");
						iceTexture = "Textures/Ice oneSide";
						direction = "left";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice right
					else if(check.top==true&&check.bottom==true&&check.left==true&&check.right==false){
						iceTexture = "Textures/Ice oneSide";
						direction = "right";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above and below
					else if(check.top==false&&check.bottom==false&&check.left==true&&check.right==true){
						iceTexture = "Textures/Ice twoSides";
						direction = "topBottom";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above and left
					else if(check.top==false&&check.bottom==true&&check.left==false&&check.right==true){
						iceTexture = "Textures/Ice twoSides2";
						direction = "aboveLeft";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above and right
					else if(check.top==false&&check.bottom==true&&check.left==true&&check.right==false){
						iceTexture = "Textures/Ice twoSides2";
						direction = "aboveRight";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice left and below
					else if(check.top==true&&check.bottom==false&&check.left==false&&check.right==true){
						iceTexture = "Textures/Ice twoSides2";
						direction = "belowLeft";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice right and below
					else if(check.top==true&&check.bottom==false&&check.left==true&&check.right==false){
						iceTexture = "Textures/Ice twoSides2";
						direction = "belowRight";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice right and left
					else if(check.top==true&&check.bottom==true&&check.left==false&&check.right==false){
						iceTexture = "Textures/Ice twoSides";
						direction = "rightLeft";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above, left and right
					else if(check.top==false&&check.bottom==true&&check.left==false&&check.right==false){
						iceTexture = "Textures/Ice threeSides (2)";
						direction = "aboveLeftRight";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice left, right and bottom
					else if(check.top==true&&check.bottom==false&&check.left==false&&check.right==false){
						iceTexture = "Textures/Ice threeSides (2)";
						direction = "belowLeftRight";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above left and bottom
					else if(check.top==false&&check.bottom==false&&check.left==false&&check.right==true){
						iceTexture = "Textures/Ice threeSides (2)";
						direction = "aboveLeftBottom";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice above, right and bottom
					else if(check.top==false&&check.bottom==false&&check.left==true&&check.right==false){
						iceTexture = "Textures/Ice threeSides (2)";
						direction = "aboveRightBottom";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
					//no ice on all sides
					else if(check.top==false&&check.bottom==false&&check.left==false&&check.right==false){
						iceTexture = "Textures/Ice allSides";
						direction = "allSides";
						applyBlendedIceTexture(x,y,iceTexture,direction);
					}
				}
			}
		}
	}
	IcySides checkSides(int x, int y){
		IcySides iceCheck = new IcySides();
		if(map.GetTileAt(x,y+1)!=null&&map.GetTileAt(x,y+1).getHasIce()!=true){
			//Debug.Log("Tile at: " + x + " "+ y + " does not have ice above");
			iceCheck.top=false;
		}
		if (map.GetTileAt (x,y-1) != null && map.GetTileAt (x,y-1).getHasIce () != true) {
			iceCheck.bottom=false;
		}
		if (map.GetTileAt (x-1,y) != null && map.GetTileAt (x-1,y).getHasIce () != true) {
			iceCheck.left = false;
		}
		if (map.GetTileAt (x+1,y) != null && map.GetTileAt (x+1,y).getHasIce () != true) {
			iceCheck.right = false;
		}
		return iceCheck;
	}
	void applyBlendedIceTexture(int x, int y, string iceTexture, string direction){
		if(elevationMap[x,y].FindChild("pCube4")){
			Transform blendedIce=elevationMap[x,y].FindChild("pCube4");
			blendedIce.renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
			blendedIce.renderer.material.color = new Color32(0,0,0,0);
			if(direction.Equals("top")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals("bottom")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("right")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("left")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,270,0));
			}
			else if(direction.Equals ("rightLeft")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("aboveLeft")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,270,0));
			}
			else if(direction.Equals ("aboveRight")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals ("belowLeft")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("belowRight")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("aboveLeftRight")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals ("belowLeftRight")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("aboveLeftBottom")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,270,0));
			}
			else if(direction.Equals ("aboveRightBottom")){
				blendedIce.rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
		} else{
			elevationMap[x,y].renderer.material.mainTexture = Resources.Load(iceTexture) as Texture;
			elevationMap[x,y].renderer.material.color = new Color32(0,0,0,0);
			if(direction.Equals("top")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals("bottom")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("right")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("left")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,270,0));
			}
			else if(direction.Equals ("rightLeft")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("aboveLeft")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,270,0));
			}
			else if(direction.Equals ("aboveRight")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals ("belowLeft")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("belowRight")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			else if(direction.Equals ("aboveLeftRight")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,0,0));
			}
			else if(direction.Equals ("belowLeftRight")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("aboveLeftBottom")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,180,0));
			}
			else if(direction.Equals ("aboveRightBottom")){
				elevationMap[x,y].rotation = Quaternion.Euler(new Vector3(0,90,0));
			}
			//elevationMap[x,y].transform.TransformDirection(new Vector3(0.0f,50.0f,0.0f));
		}
	}
}
