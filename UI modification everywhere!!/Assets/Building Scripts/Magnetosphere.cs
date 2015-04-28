public class Magnetosphere  : Building {
	private int turnsToTurnOnMagnetosphere;
	
	public Magnetosphere(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int turnsToTurnOnMagnetosphere) : base(name, cost, turnsToBuild, level, x, y, powered){
		setTurnsToTurnOnMagnetosphere (turnsToTurnOnMagnetosphere);
	}
	
	private void setTurnsToTurnOnMagnetosphere(int turnsToTurnOnMagnetosphere){
		this.turnsToTurnOnMagnetosphere = turnsToTurnOnMagnetosphere;
	}
	
	public int getTurnsToTurnOnMagnetosphere(){
		return turnsToTurnOnMagnetosphere;
	}
	
	public void decrementTurnsToTurnOnMagnetosphere(){
		this.turnsToTurnOnMagnetosphere = this.turnsToTurnOnMagnetosphere - 1;
	}
	
	public override string buildingStats()
	{
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

		return "Name: " + this.getName () + "\nStatus: " + this.getStatus() + "\nPowered: " + stat + "\nTurns left until operation: " + this.getTurnsToTurnOnMagnetosphere()+ "\n"+worked;
	}
}
