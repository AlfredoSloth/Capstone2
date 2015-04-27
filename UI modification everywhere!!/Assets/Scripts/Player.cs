using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Player : MonoBehaviour {
	public int research;
	public int food;
	public int water;
	public int buildingResources;
	private Dictionary<string, int> costsAtLevel1;
	private Dictionary<string, int> turnsToBuildAtLevel1;
	private List<Research> technologies;
	private List<Building> constructing;
	private List<Base> bases;
	private List<Beacon> beacons;
	private List<ChemistryPlant> chemistryplants;
	private List<Factory> factories;
	private List<Farm> farms;
	private List<Magnetosphere> magnetospheres;
	private List<Powerplant> powerplants;
	private List<ResearchLab> researchlabs;
	private List<Rover> rovers;
	private List<Warehouse> warehouses;
	
	public Player(int research, int food, int water, int buildingResources){
		setResearch (research);
		setFood (food);
		setWater(water);
		setBuildingResources(buildingResources);

		costsAtLevel1 = new Dictionary<string, int> ();
		setCostsAtLevel1 ();
		turnsToBuildAtLevel1 = new Dictionary<string, int> ();
		setTurnsToBuildAtLevel1 ();
		technologies = new List<Research> ();

		constructing = new List<Building> ();
		bases = new List<Base> ();
		beacons = new List<Beacon> ();
		chemistryplants = new List<ChemistryPlant> ();
		factories = new List<Factory>();
		farms = new List<Farm> ();
		magnetospheres = new List<Magnetosphere>();
		powerplants = new List<Powerplant>();
		researchlabs = new List<ResearchLab> ();
		rovers = new List<Rover> ();
		warehouses = new List<Warehouse> ();
	}

	private void setResearch(int research){
		this.research = research;
	}
	private void setFood(int food){
		this.food = food;
	}
	private void setWater(int water){
		this.water = water;
	}
	private void setBuildingResources(int buildingResources){
		this.buildingResources = buildingResources;
	}

	public int getResearch(){
		return this.research;
	}
	public int getFood(){
		return this.food;
	}
	public int getWater(){
		return this.water;
	}
	public int getBuildingResources(){
		return this.buildingResources;
	}
	
	public List<Building> getConstructing(){
		return this.constructing;
	}
	public List<Base> getBases(){
		return this.bases;
	}
	public List<Beacon> getBeacons(){
		return this.beacons;
	}
	public List<ChemistryPlant> getChemistryPlants(){
		return this.chemistryplants;
	}
	public List<Factory> getFactory(){
		return this.factories;
	}
	public List<Farm> getFarms(){
		return this.farms;
	}
	public List<Magnetosphere> getMagnetosphere(){
		return this.magnetospheres;
	}
	public List<Powerplant> getPowerplant(){
		return this.powerplants;
	}
	public List<ResearchLab> getResearchlabs(){
		return this.researchlabs;
	}
	public List<Rover> getRovers(){
		return this.rovers;
	}
	public List<Warehouse> getWarehouses(){
		return this.warehouses;
	}

	public void updateResearch(int research){
		this.research += research;
	}
	public void updateFood(int food){
		this.food += food;
	}
	public void updateWater(int water){
		this.water += water;
	}
	public void feed(int food){
		this.food -= food;
	}
	public void drink(int water){
		this.water -= water;
	}
	public void updateBuildingResources(int buildingResources){
		this.buildingResources += buildingResources;
	}
	
	public void insertConstructing(Building newConstruct){
		constructing.Add(newConstruct);
	}
	public void insertBase(Base newBase){
		bases.Add(newBase);
	}
	public void insertBeacon(Beacon newBeacon){
		beacons.Add (newBeacon);
	}
	public void insertChemistryPlant(ChemistryPlant newChemistryPlant){
		chemistryplants.Add (newChemistryPlant);
	}
	public void insertFactory(Factory newFactory){
		factories.Add(newFactory);
	}
	public void insertFarm(Farm newFarm){
		farms.Add(newFarm);
	}
	public void insertMagnetosphere(Magnetosphere newMagnetosphere){
		magnetospheres.Add(newMagnetosphere);
	}
	public void insertPowerplant(Powerplant newPowerplant){
		powerplants.Add(newPowerplant);
	}
	public void insertResearchLab(ResearchLab newResearchlab){
		researchlabs.Add(newResearchlab);
	}
	public void insertRover(Rover newRover){
		rovers.Add(newRover);
	}
	public void insertWarehouse(Warehouse newWarehouse){
		warehouses.Add(newWarehouse);
	}
	
	public void removeConstructing(int index){
		constructing.RemoveAt (index);
	}
	public void removeBase(int index){
		bases.RemoveAt (index);
	}
	public void removeBeacon(int index){
		beacons.RemoveAt (index);
	}
	public void removeChemistryPlant(int index){
		chemistryplants.RemoveAt (index);
	}
	public void removeFactory(int index){
		factories.RemoveAt (index);
	}
	public void removeFarm(int index){
		farms.RemoveAt (index);
	}
	public void removeMagnetosphere(int index){
		magnetospheres.RemoveAt (index);
	}
	public void removePowerplant(int index){
		powerplants.RemoveAt (index);
	}
	public void removeResearchlab(int index){
		researchlabs.RemoveAt (index);
	}
	public void removeRover(int index){
		rovers.RemoveAt (index);
	}
	public void removeWarehouse(int index){
		warehouses.RemoveAt (index);
	}

	private void setCostsAtLevel1 (){
		this.costsAtLevel1.Add ("Base", 250);
		this.costsAtLevel1.Add ("Beacon", 150);
		this.costsAtLevel1.Add ("Chemistry Plant", 450);
		this.costsAtLevel1.Add ("Factory", 450);
		this.costsAtLevel1.Add ("Farm", 200);
		this.costsAtLevel1.Add ("Magnetosphere", 1000);
		this.costsAtLevel1.Add ("Power Plant", 350);
		this.costsAtLevel1.Add ("Research Lab", 400);
		this.costsAtLevel1.Add ("Warehouse", 100);
		this.costsAtLevel1.Add ("Rover", 300);
	}

	public int getCostAtLevel1(string key){
		return this.costsAtLevel1[key];
	}

	private void setTurnsToBuildAtLevel1(){
		this.turnsToBuildAtLevel1.Add ("Base", 3);
		this.turnsToBuildAtLevel1.Add ("Beacon", 2);
		this.turnsToBuildAtLevel1.Add ("Chemistry Plant", 4);
		this.turnsToBuildAtLevel1.Add ("Factory", 4);
		this.turnsToBuildAtLevel1.Add ("Farm", 2);
		this.turnsToBuildAtLevel1.Add ("Magnetosphere", 15);
		this.turnsToBuildAtLevel1.Add ("Power Plant", 3);
		this.turnsToBuildAtLevel1.Add ("Research Lab", 4);
		this.turnsToBuildAtLevel1.Add ("Warehouse", 2);
		this.turnsToBuildAtLevel1.Add ("Rover", 3);
	}
	private void setResearch(){
		this.technologies.Add (new Research("Unlock Magnetosphere Machine", 250, false));
		this.technologies.Add (new Research("Unlock Chemical Plant", 100, false));
		this.technologies.Add (new Research("Unlock Factory", 80, false));
		this.technologies.Add (new Research("Unlock Level 2 Buildings", 40, false));
		this.technologies.Add (new Research("Unlock Level 3 Buildings", 80, false));
	}
	public List<Research> getTechnologies(){
		return this.technologies;
	}
	public Research getTechnology(string name){
		foreach (Research technology in getTechnologies()) {
			if(technology.getName().Equals(name)){
				return technology;
			}
		}
		return null;
	}
	
	public int getTurnsToBuildAtLevel1(string key){
		return this.turnsToBuildAtLevel1[key];
	}
}
