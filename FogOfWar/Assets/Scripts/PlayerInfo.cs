using UnityEngine;
using System.Collections;

public class PlayerInfo : MonoBehaviour
{
	public static Player player;
	// Use this for initialization
	void Start ()
	{
		createPlayer ();
	}
	void createPlayer(){
		player = new Player (0, 0, 0);
	}
	// Update is called once per frame
	void Update ()
	{
		
	}
}

