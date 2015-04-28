using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class ResourceIcon : MonoBehaviour {
	public List<GameObject> icons;
	public int xposition;
	public int yposition;

	public ResourceIcon(int xposition, int yposition){
		this.xposition = xposition;
		this.yposition = yposition;
		this.icons = new List<GameObject> ();
	}
}
