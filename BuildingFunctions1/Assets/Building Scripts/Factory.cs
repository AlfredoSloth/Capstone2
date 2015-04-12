public class Factory : Building {
	//private 
	private string pfcOrPhytoplankton;
	private float releaseAmount;
	
	
	//constructor
	public Factory(string name, int cost, int turnsToBuild, int level,int x, int y, int powered, string pfcOrPhytoplankton, float releaseAmount) : base(name, cost, turnsToBuild, level, x, y, powered){
		setPfcOrPhytoplankton (pfcOrPhytoplankton);
		setReleaseAmount (releaseAmount);
	}
	
	private void setPfcOrPhytoplankton(string pfcOrPhytoplankton){
		this.pfcOrPhytoplankton = pfcOrPhytoplankton;
		
	}
	private void setReleaseAmount(float releaseAmount){
		this.releaseAmount = releaseAmount;
	}
	
	
	public string getpfcOrPhytoplankton(){
		return pfcOrPhytoplankton;
	}
	public float getReleaseAmount(){
		return releaseAmount;
	}
	
	public void updateReleaseAmount(float releaseAmount){
		this.releaseAmount = releaseAmount;
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
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPowered: " + stat + "\nPFC or Phytoplankton: " + this.getpfcOrPhytoplankton() + "\nRelease amount: " + this.getReleaseAmount();
	}
	
}
