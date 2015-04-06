using UnityEngine;
using System.Collections;

public class FogOfWarController : MonoBehaviour {

	public GameObject selectionCube;
	public GameObject player;
	public GameObject fog;

	public Renderer rend;
	void Start() {
		//rend = GetComponent<Renderer>();

		//rend.material.SetColor("_Color", Color.grey);
	}
	void Update() {
		if (Input.GetMouseButtonDown (0)) {
			rend = GetComponent<Renderer>();
			//rend.material.SetColor("_Color", Color.white);
			ChangeAlpha(rend.material, 0);
		}

	}

	void ChangeAlpha(Material mat, float alpha){
		Color oldColor = mat.color;
		Color newcolor = new Color (oldColor.r, oldColor.b, oldColor.g, alpha);
		mat.SetColor ("_Color", newcolor);

	}
}
