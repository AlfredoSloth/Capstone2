using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameManager2 : MonoBehaviour {


	GameObject escMenu;
	bool escMenuActive = false;
	GameObject techPanel;

	// Use this for initialization
	void Start () {
		//DontDestroyOnLoad (transform.gameObject);
		escMenu = GameObject.FindGameObjectWithTag ("escmenu");
		escMenu.SetActive (false);
		techPanel = GameObject.FindGameObjectWithTag ("techpanel");
		techPanel.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		escMenuPopup ();
	}

	public void displayUI(GameObject toggleTarget){
		if (toggleTarget != null) {
			if (toggleTarget.activeSelf == true){
				toggleTarget.SetActive(false);
			}
			else{
				toggleTarget.SetActive(true);
			}
		}
	}

	public void displayUIByHover(GameObject toggleTarget){
		toggleTarget.SetActive(true);
	}
	public void hideUIByHover(GameObject toggleTarget){
		toggleTarget.SetActive(false);
	}

	private void escMenuPopup(){
		if (escMenu != null) {
			if (escMenu.active == false) {
				escMenuActive = false;
			} else {
				escMenuActive = true;
			}

			if(Input.GetKeyDown(KeyCode.Escape)){
				if(escMenuActive == false){
					escMenu.SetActive(true);

				}
				else{
					escMenu.SetActive(false);

				}
				
			}
		}
	}

	public void playTheAudio(){
		audio.Play ();
	}
}
