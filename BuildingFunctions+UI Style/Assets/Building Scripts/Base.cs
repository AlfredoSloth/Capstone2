using System.Collections;
using System.Collections.Generic;

public class Base : Building {
	private int population;
	private Warehouse supplier;
	private int turnsFed;
	
	public Base(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int population) : base(name, cost, turnsToBuild, level, x, y, powered){
		setPopulation (population);
		setSupplier ();
		setTurnsFed ();
	}

	private void setSupplier(){
		this.supplier = null;
	}
	public Warehouse getSupplier(){
		return this.supplier;
	}
	public void updateSupplier(string name){
		foreach (Warehouse warehouse in PlayerInfo.player.getWarehouses().ToArray()) {
			if (warehouse.getName () == name){
				this.supplier = warehouse;
			}
		}
		
	}

	private void setPopulation(int population){
		this.population = population;
	}
	public int getPopulation(){
		return this.population;
	}
	public void updatePopulation(int newPopulation){
		this.population = newPopulation;
	}

	private void setTurnsFed(){
		this.turnsFed = 0;
	}
	public int getTurnsFed(){
		return this.turnsFed;
	}
	public void updateTurnsFed(int turns){
		this.turnsFed = turns;
	}

	public override string buildingStats(){
		string stat;
		if (this.getPowered() == 0) {
			stat = "false";
		} else if(this.getPowered() == 1) {
			stat = "true";
		} else {
			stat = "N/A";
		}
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPowered: " + stat +  "\nPopulation: " + this.getPopulation();
	}

	int determineRange(){
		int level = getLevel ();
		int range = 0;
		/*level 1: range=2
		level 2: range=3
		level 3: range=4*/
		
		switch (level) {
		case 1:
			range = 2;
			break;
		case 2:
			range = 3;
			break;
		case 3:
			range = 4;
			break;
		default:
			break;
		}
		
		return range;
	}
}
