using UnityEngine;
using System.Collections;

public class Mars{
	private float averageTemp;
	private bool marsHasMagnetosphere;
	private float marsAtmosphere;
	private float marsOxygen;
	
	public Mars (float temp, bool magnetosphere, float atmosphere, float oxygen){
		setAverageTemp (temp);
		setMarsHasMegnetosphere(magnetosphere);
		setMarsAtmosphere(atmosphere);
		setMarsOxygen(oxygen);
	}
	
	private void setAverageTemp(float temp){
		this.averageTemp = temp;
	}
	private void setMarsHasMegnetosphere(bool magnetosphere){
		this.marsHasMagnetosphere = magnetosphere;
	}
	private void setMarsAtmosphere(float atmosphere){
		this.marsAtmosphere = atmosphere;
	}
	private void setMarsOxygen(float oxygen){
		this.marsOxygen = oxygen;
	}
	
	public float getAverageTemp(){
		return this.averageTemp;
	}
	public bool getMarsHasMegnetosphere(){
		return this.marsHasMagnetosphere;
	}
	public float getMarsAtmosphere(){
		return this.marsAtmosphere;
	}
	public float getMarsOxygen(){
		return this.marsOxygen;
	}
	
	public void updateAverageTemp(float temp){
		this.averageTemp = temp;
	}
	public void updateMarsHasMegnetosphere(bool magnetosphere){
		this.marsHasMagnetosphere = magnetosphere;
	}
	public void updateMarsAtmosphere(float atmosphere){
		this.marsAtmosphere = atmosphere;
	}
	public void updateMarsOxygen(float oxygen){
		this.marsOxygen = oxygen;
	}

	public virtual string marsStats(){
		return "Current Avg Temperature: " + this.getAverageTemp () + "\nGoal Avg Temperation: 61\nCurrent Oxygen Level: " + this.getMarsOxygen() + "\nGoal Oxygen Level: 0.21\nMars has megnetosphere: " + this.getMarsHasMegnetosphere();
	}
}
