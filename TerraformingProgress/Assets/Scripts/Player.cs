using System.Collections;
using System.Collections.Generic;

public class Player{
	private int food;
	private int water;
	private int buildingResources;
	private List<Base> bases;
	private List<Magnetosphere> magnetospheres;
	private List<Factory> factories;

	public Player(int food, int water, int buildingResources){
		setFood (food);
		setWater(water);
		setBuildingResources(buildingResources);
		bases = new List<Base> ();
		magnetospheres = new List<Magnetosphere>();
		factories = new List<Factory>();
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
	public int getFood(){
		return this.food;
	}
	public int getWater(){
		return this.water;
	}
	public int getBuildingResources(){
		return this.buildingResources;
	}

	public List<Base> getBases(){
		return this.bases;
	}
	public List<Magnetosphere> getMagnetosphere(){
		return this.magnetospheres;
	}
	public List<Factory> getFactory(){
		return this.factories;
	}

	public void updateFood(int food){
		this.food = food;
	}
	public void updateTurns(int water){
		this.water = water;
	}
	public void updateBuildingResources(int buildingResources){
		this.buildingResources = buildingResources;
	}

	public void insertBase(Base newBase){
		bases.Add(newBase);
	}
	public void insertMagnetosphere(Magnetosphere newMagnetosphere){
		magnetospheres.Add(newMagnetosphere);
	}
	public void insertFactory(Factory newFactory){
		factories.Add(newFactory);
	}
}
