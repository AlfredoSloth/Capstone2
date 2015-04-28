using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {

	public bool isOverUIelement = false;

	void Awake(){
		DontDestroyOnLoad (transform.gameObject);
	}

	public void QuitGame () {
		Debug.Log ("Quitting game...");
		Application.Quit ();
	}

	public void changeToScene (int sceneNum){
		Application.LoadLevel (sceneNum);
	}

	public void isOver(){
		isOverUIelement = true;
	}
	public void isOut(){
		isOverUIelement = false;
	}
}
