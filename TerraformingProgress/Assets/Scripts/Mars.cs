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
	
	private float getAverageTemp(){
		return this.averageTemp;
	}
	
	private bool getMarsHasMegnetosphere(){
		return this.marsHasMagnetosphere;
	}
	
	private float getMarsAtmosphere(){
		return this.marsAtmosphere;
	}
	
	private float getMarsOxygen(){
		return this.marsOxygen;
	}
	
	private void updateAverageTemp(float temp){
		this.averageTemp = temp;
	}
	
	private void updateMarsHasMegnetosphere(bool magnetosphere){
		this.marsHasMagnetosphere = magnetosphere;
	}
	
	private void updateMarsAtmosphere(float atmosphere){
		this.marsAtmosphere = atmosphere;
	}
	
	private void updateMarsOxygen(float oxygen){
		this.marsOxygen = oxygen;
	}
}
