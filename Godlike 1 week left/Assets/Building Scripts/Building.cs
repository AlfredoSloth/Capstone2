﻿public class Building {
	private string name;
	private int cost;
	private int turnsToBuild;
	private int level;
	private int posX;
	private int posY;
	private int powered; //0 = false; 1 = true; -1 = building not using this feature (Beacon and warehouse)
	
	public Building(string name, int cost, int turnsToBuild, int level, int x, int y, int powered){
		setName(name);
		setCost(cost);
		setTurnsToBuild (turnsToBuild);
		setLevel(level);
		setX (x);
		setY (y);
		setPowered (powered);
	}
	private void setName(string name){
		this.name = name;
	}
	private void setCost(int cost){
		this.cost = cost;
	}
	private void setTurnsToBuild(int turnsToBuild){
		this.turnsToBuild = turnsToBuild;
	}
	private void setLevel(int level){
		this.level = level;
	}
	public string getName(){
		return this.name;
	}
	public int getCost(){
		return this.cost;
	}
	public int getTurnsToBuild(){
		return this.turnsToBuild;
	}
	public int getLevel(){
		return this.level;
	}
	public void updateCost(int newCost){
		this.cost = newCost;
	}
	public void updateTurns(int newTurns){
		this.turnsToBuild = newTurns;
	}
	public void updateLevel(int newLevel){
		this.level = newLevel;
	}
	
	private void setPowered(int newPowered){
		this.powered = newPowered;
	}
	public int getPowered(){
		return this.powered;
	}
	public void updatePowered(int newPowered){
		this.powered = newPowered;
	}
	
	private void setX(int newX){
		this.posX = newX;
	}
	private void setY(int newY){
		this.posY = newY;
	}
	
	public int getX(){
		return this.posX;
	}
	public int getY(){
		return this.posY;
	}
	
	//mainly for rovers
	public void updatePosition(int x, int y){
		this.posX = x;
		this.posY = y;
	}
	
	public virtual string buildingStats(){
		string stat;
		if (this.getPowered() == 0) {
			stat = "false";
		} else if(this.getPowered() == 1) {
			stat = "true";
		} else {
			stat = "N/A";
		}
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel () + "\nPowered: " + stat;
	}
}