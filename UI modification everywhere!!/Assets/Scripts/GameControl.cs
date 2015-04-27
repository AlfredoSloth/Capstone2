using UnityEngine;
using System.Collections;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class GameControl : MonoBehaviour {

	public static GameControl control;
	PlayerInfo tm;
	TileMapMouse tmm;

	void Awake(){
		if (control == null) {
			control = this;
		} else if (control != this) {
			Destroy(gameObject);
		}
	}

	void Start(){
		tm = GameObject.FindGameObjectWithTag("tilemap").GetComponent<PlayerInfo> ();
		//Debug.Log (Application.persistentDataPath + "/playerInfo.dat");
		tmm = GameObject.FindGameObjectWithTag("tilemap").GetComponent<TileMapMouse> ();
	}

	public void Save(){
		BinaryFormatter bf = new BinaryFormatter ();
		FileStream file = File.Create("/Users/lexus_mans/UnitySaves/playerInfo.dat");

		PlayerData data = new PlayerData ();

		data.waterResource = tm.water;
		data.foodResource = tm.food;
		data.buildingResource = tm.buildingResource;
		Debug.Log ("tm.water = " + tm.water + ", tm.food = " + tm.food + ", tm.buildingResource = " + tm.buildingResource);

		bf.Serialize (file, data);
		file.Close ();
		Debug.Log ("Save Successfully"); 
	}
	public void Load(){
		if (File.Exists ("/Users/lexus_mans/UnitySaves/playerInfo.dat")) {
			BinaryFormatter bf = new BinaryFormatter ();
			FileStream file = File.Open ("/Users/lexus_mans/UnitySaves/playerInfo.dat", FileMode.Open);
			PlayerData data = (PlayerData)bf.Deserialize (file);
			file.Close ();

			tm.water = data.waterResource;
			tm.food = data.foodResource;
			tm.buildingResource = data.buildingResource;
			tmm.updateScoreText(tm.water,tm.food,tm.buildingResource);

			Debug.Log ("tm.water = " + tm.water + ", tm.food = " + tm.food + ", tm.buildingResource = " + tm.buildingResource);


			Debug.Log ("Loaded Successfully");
		} else {
			Debug.Log ("File does not exist.");
		}
	}
}

[Serializable]
class PlayerData
{
	public int waterResource;
	public int foodResource;
	public int buildingResource;

}
