public class Building {
	private string name;
	private int cost;
	private int turnsToBuild;
	private int level;

	public Building(string name, int cost, int turnsToBuild, int level){
		setName(name);
		setCost(cost);
		setTurnsToBuild (turnsToBuild);
		setLevel(level);
	}
	private void setName(string name){
		this.name = name;
	}
	private void setCost(int turnsToBuild){
		this.cost = cost;
	}
	private void setTurnsToBuild(int turnsToBuild){
		this.turnsToBuild = turnsToBuild;
	}
	private void setLevel(int level){
		this.level = level;
	}
	public string getName(){
		return this.name;
	}
	public int getCost(){
		return this.cost;
	}
	public int getTurnsToBuild(){
		return this.turnsToBuild;
	}
	public int getLevel(){
		return this.level;
	}
	public void updateCost(int newCost){
		this.cost = newCost;
	}
	public void updateTurns(int newTurns){
		this.turnsToBuild = newTurns;
	}
	public void updateLevel(int newLevel){
		this.level = newLevel;
	}
	public virtual string buildingStats(){
		return "Name: " + this.getName () + "\nLevel: " + this.getLevel ();
	}
}
