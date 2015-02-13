using UnityEditor;
using UnityEngine;
using System.Collections;

[CustomEditor(typeof(TileMap))]
public class TileMapInspector : Editor {
	public override void OnInspectorGUI(){
		//base.OnInspectorGUI();
		DrawDefaultInspector();
		TileMap tileMap = (TileMap)target;
		if (GUILayout.Button("Regenerate")) {
			tileMap.BuildMesh();
		}
	}
}
