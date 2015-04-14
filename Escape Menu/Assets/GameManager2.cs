using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class GameManager2 : MonoBehaviour {


	GameObject escMenu;
	bool escMenuActive = false;

	// Use this for initialization
	void Start () {
		//DontDestroyOnLoad (transform.gameObject);
		escMenu = GameObject.FindGameObjectWithTag ("escmenu");
		escMenu.SetActive (false);
	}
	
	// Update is called once per frame
	void Update () {
		escMenuPopup ();
	}

	public void makeGameObjDisappear(GameObject target){
		if (target.activeSelf == true) {
			target.SetActive(false);
		}
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
}
