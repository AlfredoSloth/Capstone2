public class Base : Building {
	private int population;
	
	public Base(string name, int cost, int turnsToBuild, int level, int x, int y, int powered, int population) : base(name, cost, turnsToBuild, level, x, y, powered){
		setPopulation (population);
	}
	private void setPopulation(int population){
		this.population = population;
	}
	public int getPopulation(){
		return this.population;
	}
	public void updatePopulation(int newPopulation){
		this.population = newPopulation;
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
		
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPowered: " + stat +  "\nPopulation: " + this.getPopulation();
	}
	
}
