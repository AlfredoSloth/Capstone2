using UnityEngine;
using System.Collections;

public class Research : MonoBehaviour {
	private string name;
	private int cost;
	private bool researched;

	public Research(string name, int cost, bool researched){
		setName (name);
		setCost (cost);
		setResearched (researched);
	}
	private void setName(string name){
		this.name = name;
	}

	private void setCost(int cost){
		this.cost = cost;
	}
	private void setResearched(bool researched){
		this.researched = researched;
	}
	public string getName(){
		return this.name;
	}
	public int getCost(){
		return this.cost;
	}
	public bool getResearched(){
		return this.researched;
	}
	public string researchStats()
	{
		string researchString;
		if (getResearched () == false) {
			researchString = "Not researched";
		} else {
			researchString = "Researched";
		}
		return "Name: " + this.getName () + "\n cost: " + this.getCost() + "\n" + researchString;
	}
}
