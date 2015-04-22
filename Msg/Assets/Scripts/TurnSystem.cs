using UnityEngine;
using System.Collections;

public class TurnSystem{
	private int turnNum;

	public TurnSystem (int turn){
		setTurnNum (turn);
	}

	private void setTurnNum (int turn){
		this.turnNum = turn;
	}

	public int getTurnNum(){
		return this.turnNum;
	}

	public void incrementTurnNum(){
		this.turnNum = this.turnNum + 1;
	}

	public virtual string turnStats(){
		return "Turn Number: " + this.getTurnNum();
	}
}
