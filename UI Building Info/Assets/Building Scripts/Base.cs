public class Base : Building {
	private int population;

	public Base(string name, int cost, int turnsToBuild, int level, int population) : base(name, cost, turnsToBuild, level){
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
	public override string buildingStats()
	{
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel() + "\nPopulation: " + this.getPopulation();
	}
}
