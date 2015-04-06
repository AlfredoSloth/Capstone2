public class Factory : Building {
	//private 
	private string pfcOrPhytoplankton;
	private int releaseAmount;
	

	//constructor
	public Factory(string name, int cost, int turnsToBuild, int level,string pfcOrPhytoplankton, int releaseAmount) : base(name, cost, turnsToBuild, level){
	
		setPfcOrPhytoplankton (pfcOrPhytoplankton);
		setReleaseAmount (releaseAmount);
	}

	private void setPfcOrPhytoplankton(string pfcOrPhytoplankton){
		this.pfcOrPhytoplankton = pfcOrPhytoplankton;

	}
	private void setReleaseAmount(int releaseAmount){
		this.releaseAmount = releaseAmount;
	}
	public string getfcOrPhytoplankton(){
		return pfcOrPhytoplankton;
	}
	public int getReleaseAmount(){
		return releaseAmount;
	}

	public void updateReleaseAmount(int releaseAmount){
		this.releaseAmount = releaseAmount;
	}

	public override string buildingStats()
	{
		return "Name: " + this.getName () + "\n" + this.getfcOrPhytoplankton() + ":" + this.getReleaseAmount();
	}

}
