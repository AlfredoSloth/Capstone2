using UnityEngine;
public class Beacon : Building {
	public Beacon(string name, int cost, int turnsToBuild, int level, int x, int y, int powered) : base(name, cost, turnsToBuild, level, x, y, powered){

	}
	public void createSafeZones(){
		int range = determineRange ();
		
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				//check to see if tile is safe
				bool check = TGMap.map.GetTileAt(x, y).getIsSafe();
				//if not change it to a safe zone
				if(check==false){
					//Debug.Log("Changing tile to safe zone at: " +x+" "+y);
					TGMap.map.GetTileAt(x,y).updateIsSafe(true);
				}
			}
		}
	}
	public int determineRange(){
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
	
	public void displayRange(){
		int range = determineRange ();
		
		for(int x=getX ()-range; x<getX ()+range+1; x++){
			for(int y=getY ()-range; y<getY ()+range+1; y++){
				if(TGMap.elevationMap[x,y].FindChild("pCube4")){
					Transform thingything = TGMap.elevationMap[x,y].FindChild("pCube4");
					thingything.renderer.material.color = new Color32(0,255,0,255);
				}
				else{
					TGMap.elevationMap[x,y].renderer.material.color = new Color32(0,255,0,255);
				}
			}
		}
	}
	
	public override string buildingStats()
	{
		string stat;
		if (this.getPowered() == 0) {
			stat = "false";
		} else if(this.getPowered() == 1) {
			stat = "true";
		} else {
			stat = "N/A";
		}
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nStatus: " + this.getStatus() + "\nPowered: " + stat;
	}
}
