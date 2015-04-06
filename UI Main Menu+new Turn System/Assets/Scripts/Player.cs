using System.Collections;
using System.Collections.Generic;

public class Player{
	private int food;
	private int water;
	private int buildingResources;
	private List<Base> bases;

	public Player(int food, int water, int buildingResources){
		setFood (food);
		setWater(water);
		setBuildingResources(buildingResources);
		bases = new List<Base> ();
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
}
