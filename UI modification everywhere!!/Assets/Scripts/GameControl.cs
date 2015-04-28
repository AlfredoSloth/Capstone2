using UnityEngine;
using System.Collections;
using System;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class GameControl : MonoBehaviour {

	public static GameControl control;

	void Awake(){
		if (control == null) {
			control = this;
		} else if (control != this) {
			Destroy(gameObject);
		}
	}

	void Start(){

	}

	public void Save(){
		BinaryFormatter bf = new BinaryFormatter ();
		FileStream file = File.Create(Application.persistentDataPath + "/playerInfo.dat");

		PlayerData data = new PlayerData ();

		data.waterResource = PlayerInfo.player.getWater();
		data.foodResource = PlayerInfo.player.getFood();
		data.buildingResource = PlayerInfo.player.getBuildingResources();
		data.researchResource = PlayerInfo.player.getResearch ();
		Debug.Log ("On Save: data.water = " + data.waterResource + ", data.food = " + data.foodResource + ", data.buildingResource = " + data.buildingResource + ", data.researchResource = " + data.researchResource);

		bf.Serialize (file, data);
		file.Close ();
		Debug.Log ("Saved Successfully"); 
	}
	public void Load(){
		if (File.Exists (Application.persistentDataPath + "/playerInfo.dat")) {
			BinaryFormatter bf = new BinaryFormatter ();
			FileStream file = File.Open (Application.persistentDataPath + "/playerInfo.dat", FileMode.Open);
			PlayerData data = (PlayerData)bf.Deserialize (file);
			file.Close ();

			PlayerInfo.player.loadResources(data.researchResource, data.buildingResource, data.waterResource, data.foodResource);

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
	public int researchResource;

}
