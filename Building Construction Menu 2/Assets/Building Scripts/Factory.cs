public class Factory : Building {
	//private 
	private string pfcOrPhytoplankton;
	private float releaseAmount;
	
	
	//constructor
	public Factory(string name, int cost, int turnsToBuild, int level,string pfcOrPhytoplankton, float releaseAmount) : base(name, cost, turnsToBuild, level){
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
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPFC or Phytoplankton: " + this.getpfcOrPhytoplankton() + "\nRelease amount: " + this.getReleaseAmount();
	}
	
}
