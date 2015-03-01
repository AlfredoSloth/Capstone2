using UnityEngine;
using System.Collections;

[RequireComponent(typeof(TileMap))]
public class TileMapMouse : MonoBehaviour {

	TGMap _tileMapGfx;
	
	Vector3 currentTileCoord;

	public Transform selectionCube;

	void Start() {
		_tileMapGfx = GetComponent<TGMap> ();

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
			Debug.Log("Terrain Type:" + TGMap.map.GetTileAt((int)currentTileCoord.x, (int)currentTileCoord.y).getTerrainType());
		}
	}
	
}
