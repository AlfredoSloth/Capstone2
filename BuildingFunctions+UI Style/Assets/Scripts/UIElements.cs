using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class UIElements : MonoBehaviour {
	
	// Use this for initialization
	void Start () {

	}
	
	public void displayManual(GameObject toggleTarget){
		if (toggleTarget != null) {
			if (toggleTarget.activeSelf == true){
				toggleTarget.SetActive(false);
			}
			else{
				toggleTarget.SetActive(true);
			}
		}
	}
}
