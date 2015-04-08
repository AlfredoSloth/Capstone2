public class Magnetosphere  : Building {
	private int turnsToTurnOnMagnetosphere;
	
	
	public Magnetosphere(string name, int cost, int turnsToBuild, int level, int turnsToTurnOnMagnetosphere) : base(name, cost, turnsToBuild, level){
		setTurnsToTurnOnMagnetosphere (turnsToTurnOnMagnetosphere);
	}
	
	private void setTurnsToTurnOnMagnetosphere(int turnsToTurnOnMagnetosphere){
		this.turnsToTurnOnMagnetosphere = turnsToTurnOnMagnetosphere;
	}
	
	public int getTurnsToTurnOnMagnetosphere(){
		return turnsToTurnOnMagnetosphere;
	}
	
	public void decrementTurnsToTurnOnMagnetosphere(){
		--turnsToTurnOnMagnetosphere;
	}
	
	public override string buildingStats()
	{
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nTurns left until operation: " + this.getTurnsToTurnOnMagnetosphere();
	}
}
