public class Rover {
	int range;
	int numMoves;
	int positionx;
	int positiony;
	public Rover(string name, int x, int y, int range, int numMoves){
		setNumMoves (numMoves);
	}
	private void setPositionX(int x){
		this.positionx = x;
	}
	private void setPositionY(int y){
		this.positiony = y;
	}
	private void setRange(int range){
		this.range = range;
	}
	private void setNumMoves(int numMoves){
		this.numMoves = numMoves;
	}
	public int getRange(){
		return range;
	}
	public int getNumMoves(){
		return numMoves;
	}
	public int getPositionX(){
		return positionx;
	}
	public int getPositionY(){
		return positiony;
	}
	public void updatePosition(int x, int y){
		this.positionx = x;
		this.positiony = y;
	}
	public void updateRange(int newRange){
		this.range = newRange;
	}
	public void updateNumMoves(int newValue){
		this.numMoves = newValue;
	}
}
