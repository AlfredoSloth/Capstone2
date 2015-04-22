using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Manual : MonoBehaviour {

	GameObject manualpanel;

	// Use this for initialization
	void Start () {
		manualpanel = GameObject.FindGameObjectWithTag("manual");
		manualpanel.SetActive (false);
	}

	public void displayManual(){
		if (manualpanel != null) {
			if (manualpanel.activeSelf == true){
				manualpanel.SetActive(false);
			}
			else{
				manualpanel.SetActive(true);
			}
		}
	}
}