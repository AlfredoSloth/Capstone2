using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour {
	
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
}
