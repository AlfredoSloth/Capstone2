using UnityEngine;
using System.Collections;
using System.Collections.Generic;
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
		//data.costsAtLevel1 = PlayerInfo.player.getCostAtLevel1 ();
		//data.turnsToBuildAtLevel1 = PlayerInfo.player.getTurnsToBuildAtLevel1 ();
		data.technologies = PlayerInfo.player.getTechnologies ();
		data.constructing = PlayerInfo.player.getConstructing ();
		data.bases = PlayerInfo.player.getBases ();
		data.beacons = PlayerInfo.player.getBeacons ();
		data.chemistryplants = PlayerInfo.player.getChemistryPlants ();
		data.factories = PlayerInfo.player.getFactory ();
		data.farms = PlayerInfo.player.getFarms ();
		data.magnetospheres = PlayerInfo.player.getMagnetosphere ();
		data.powerplants = PlayerInfo.player.getPowerplant ();
		data.researchlabs = PlayerInfo.player.getResearchlabs ();
		data.rovers = PlayerInfo.player.getRovers ();
		data.warehouses = PlayerInfo.player.getWarehouses ();







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
	public Dictionary<string, int> costsAtLevel1;
	public Dictionary<string, int> turnsToBuildAtLevel1;
	public List<Research> technologies;
	public List<Building> constructing;
	public List<Base> bases;
	public List<Beacon> beacons;
	public List<ChemistryPlant> chemistryplants;
	public List<Factory> factories;
	public List<Farm> farms;
	public List<Magnetosphere> magnetospheres;
	public List<Powerplant> powerplants;
	public List<ResearchLab> researchlabs;
	public List<Rover> rovers;
	public List<Warehouse> warehouses;

}
