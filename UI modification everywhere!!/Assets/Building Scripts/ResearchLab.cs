public class ResearchLab : Building {
	private int researchAmount;
	public ResearchLab(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int researchPts) : base(name, cost, turnsToBuild, level, x, y, powered){
		setResearchAmount(researchPts);
	}
	private void setResearchAmount(int researchAmount){
		this.researchAmount = researchAmount;
	}
	
	public int getResearchAmount(){
		return researchAmount;
	}
	
	public void updateResearchAmount(float releaseAmount){
		this.researchAmount = researchAmount;
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
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nStatus: " + this.getStatus() + "\nPowered: " + stat + "\nResearch pts per turn: " + this.getResearchAmount();
	}
}
