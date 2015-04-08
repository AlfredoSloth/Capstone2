using UnityEngine;
using System.Collections;

public class MainMenu : MonoBehaviour {

	public void QuitGame () {
		Debug.Log ("Quitting game...");
		Application.Quit ();
	}
	public void changeToScene (int sceneNum){
		Application.LoadLevel (sceneNum);
	}
}
