using UnityEngine;

public class Powerplant : Building {
	private int turnsTilEnable; //set to int 0 when initialized
	
	public Powerplant(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int turnsTilEnable) : base(name, cost, turnsToBuild, level, x, y, powered){
		setTurnsTilEnable (turnsTilEnable);
	}
	
	//Checks for nearby buildings then powers them up
	public void powerUp(){
		int range = determineRange ();
		Debug.Log (getX ());
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				//(get tile data and see if there is a building or not)
				Debug.Log("Checking for buildings to power up at" + x + " " + y);
				Building check = TGMap.map.GetTileAt(x, y).getBuilding();
				if(check!=null){
					Debug.Log("Building Found at " + x + " " + y);
					if(check.getTurnsToBuild() == 0 && check.getPowered() == 0){
						Debug.Log("Powering up " + check);
						check.updatePowered(1);
						Debug.Log("type: " + check.GetType() + " powered: " + check.getPowered());
					}
				}
			}
		}
	}
	
	private void setTurnsTilEnable(int turns){
		this.turnsTilEnable = turns;
	}
	
	public int getTurnsTilEnable(){
		return this.turnsTilEnable;
	}
	
	public void updateTurnsTilEnable(int turns){
		this.turnsTilEnable = turns;
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
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPowered: " + stat + "\nTurns till enable: " + this.getTurnsTilEnable();
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
