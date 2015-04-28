﻿using UnityEngine;
using System.Collections.Generic;
public class Building {
	private string name;
	private int cost;
	private int turnsToBuild;
	private int turnsToUpgrade;
	private int level;
	private int posX;
	private int posY;
	private int powered; //0 = false; 1 = true; -1 = building not using this feature (Beacon and warehouse)
	private string status;
	private bool worked;
	public Building(string name, int cost, int turnsToBuild, int level, int x, int y, int powered){
		setName(name);
		setCost(cost);
		setTurnsToBuild (turnsToBuild);
		setTurnsToUpgrade ();
		setLevel(level);
		setX (x);
		setY (y);
		setPowered (powered);
		setStatus ();
		worked = false;
	}
	private void setStatus(){
		this.status = "Constructed";
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
	private void setTurnsToUpgrade(){
		this.turnsToUpgrade = 0;
	}
	private void setLevel(int level){
		this.level = level;
	}
	public string getStatus(){
		return this.status;
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
	public int getTurnsToUpgrade(){
		return this.turnsToUpgrade;
	}
	public int getLevel(){
		return this.level;
	}
	public bool getWorked(){
		return this.worked;
	}
	public void updateStatus(string newStatus){
		this.status = newStatus;
	}
	public void updateCost(int newCost){
		this.cost = newCost;
	}
	public void updateWorked(bool worked){
		this.worked = worked;
	}
	public void updateTurns(int newTurns){
		this.turnsToBuild = newTurns;
	}
	public void updateTurnsToUpgrade(int newUpgrade){
		this.turnsToUpgrade = newUpgrade;
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
	public void hideRange(int range){
		List<TileColors> tileColors = TGMap.tileColors;
		Color32 mountainColor;
		Color32 flatColor;
		Color32 hillColor;
		Color32 valleyColor;
		Color32 iceColor;

		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				if(TGMap.elevationMap[x,y].FindChild("pCube4")){
					Transform thingything = TGMap.elevationMap[x,y].FindChild("pCube4");
					//mountain
					if(TGMap.map.GetTileAt(x,y).getTerrainType()==0){
						thingything.renderer.material.color = new Color32(197,106,106,255);
					}
					//flat
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==1){
						thingything.renderer.material.color = new Color32(218,126,126,255);
					}
					//hills
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==1){
						thingything.renderer.material.color = new Color32(218,126,126,255);
					}
					//valley
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==1){
						thingything.renderer.material.color = new Color32(218,126,126,255);
					}
					//ice
					else if(TGMap.map.GetTileAt(x,y).getHasIce()==true){
						thingything.renderer.material.color = new Color32(255,255,255,255);
					}
				}
				else{
					if(TGMap.map.GetTileAt(x,y).getTerrainType()==0){
						TGMap.elevationMap[x,y].renderer.material.color = new Color32(197,106,106,255);
					}
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==1){
						TGMap.elevationMap[x,y].renderer.material.color = new Color32(218,126,126,255);
					}
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==2){
						TGMap.elevationMap[x,y].renderer.material.color = new Color32(218,126,126,255);
					}
					else if(TGMap.map.GetTileAt(x,y).getTerrainType()==3){
						TGMap.elevationMap[x,y].renderer.material.color = new Color32(218,126,126,255);
					}
					else if(TGMap.map.GetTileAt(x,y).getHasIce()==true){
						TGMap.elevationMap[x,y].renderer.material.color = new Color32(255,255,255,255);
					}
				}
			}
		}
	}
	public virtual string buildingStats(){
		string worked;
		string stat;
		if (this.getPowered() == 0) {
			stat = "false";
		} else if(this.getPowered() == 1) {
			stat = "true";
		} else {
			stat = "N/A";
		}
		if (this.getWorked () == true)
			worked = "Worked";
		else
			worked = "Not being worked";

		return "Name: " + this.getName () + "\nLevel: " + this.getLevel () + "\nStatus: " + this.getStatus() + "\nPowered: " + stat+"\n"+worked;
	}
}
