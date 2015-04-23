using UnityEditor;
using UnityEngine;
using System.Collections;

[CustomEditor(typeof(TGMap))]
public class TileMapInspector : Editor {
	public override void OnInspectorGUI(){
		//base.OnInspectorGUI();
		DrawDefaultInspector();
		TGMap tileMap = (TGMap)target;
		if (GUILayout.Button("Regenerate")) {
			tileMap.BuildMesh();
		}
	}
}
