public class ChemistryPlant : Building {
	//private 
	private float releaseAmount;

	//constructor
	public ChemistryPlant(string name, int cost, int turnsToBuild, int level,int x, int y, int powered, float releaseAmount) : base(name, cost, turnsToBuild, level, x, y, powered){
		setReleaseAmount (releaseAmount);
	}
	
	private void setReleaseAmount(float releaseAmount){
		this.releaseAmount = releaseAmount;
	}
	
	public float getReleaseAmount(){
		return releaseAmount;
	}
	
	public void updateReleaseAmount(float releaseAmount){
		this.releaseAmount = releaseAmount;
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

		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nStatus: " + this.getStatus() + "\nPowered: " + stat + "\nRelease amount: " + this.getReleaseAmount()+ "\n"+worked;
	}
	
}

