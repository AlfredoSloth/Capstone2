public class Farm : Building {
	private int gatherFoodAmount;
	public Farm(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int gatherAmount) : base(name, cost, turnsToBuild, level, x, y, powered){
		setGatherFoodAmount (gatherAmount);
	}
	private void setGatherFoodAmount(int gatherFoodAmount){
		this.gatherFoodAmount = gatherFoodAmount;
	}
	
	public int getGatherFoodAmount(){
		return gatherFoodAmount;
	}
	
	public void updateGatherFoodAmount(int newGatherFoodAmount){
		this.gatherFoodAmount = newGatherFoodAmount;
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

		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nStatus: " + this.getStatus() + "\nPowered: " + stat + "\nFood gathering pts per turn: " + this.getGatherFoodAmount()+ "\n"+worked;
	}
}
