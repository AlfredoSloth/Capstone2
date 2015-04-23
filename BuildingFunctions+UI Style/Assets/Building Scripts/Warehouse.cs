using UnityEngine;

public class Warehouse : Building {
	private Base supplying;
	
	public Warehouse(string name, int cost, int turnsToBuild, int level, int x, int y, int powered) : base(name, cost, turnsToBuild, level, x, y, powered){
		setSupplying ();
	}
	private void setSupplying(){
		this.supplying = null;
	}
	public Base getSupplying(){
		return this.supplying;
	}
	public void updateSupplying(Base newSupplying){
		this.supplying = newSupplying;
	}
	
	public void supplyBase(){
		int range = determineRange ();
		
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				//(get tile data and see if there is a building or not)
				Building check = TGMap.map.GetTileAt(x, y).getBuilding();
				if(check!=null){
					//check if building is of type Base
					if(check is Base){
						//add base to supplying attribute
						this.supplying = check as Base;
						//set supplying base's supplier attribute
						this.supplying.updateSupplier(this.getName());
					}
				}
			}
		}
	}
	
	public void feed(){
		//get current water and food numbers
		int water = PlayerInfo.player.getWater();
		int food = PlayerInfo.player.getFood();
		//get population of supplying base
		int pop = this.supplying.getPopulation ();
		
		//decreases food and water based on supplying base's population
		//1 to 3: decrease 2
		//4 to 6: decrease 4
		//7 to 10: decrease 8
		if (pop >= 1 && pop <= 3) {
			water = water - 2;
			PlayerInfo.player.updateWater(water);
			food = food - 2;
			PlayerInfo.player.updateFood (food);
		}else if (pop >= 4 && pop <= 6){
			water = water - 4;
			PlayerInfo.player.updateWater(water);
			food = food - 4;
			PlayerInfo.player.updateFood (food);
		}else if (pop >= 7 && pop <= 10){
			water = water - 8;
			PlayerInfo.player.updateWater(water);
			food = food - 8;
			PlayerInfo.player.updateFood (food);
		}
		
		this.supplying.updateTurnsFed (this.supplying.getTurnsFed () + 1);
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
