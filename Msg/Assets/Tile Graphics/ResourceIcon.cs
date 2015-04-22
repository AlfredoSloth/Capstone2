using UnityEngine;
using System.Collections;

public class ResourceIcon : MonoBehaviour {
	public string name;
	public GameObject icon;

	public ResourceIcon(string name, GameObject icon){
		this.name = name;
		this.icon = icon;
	}
}
