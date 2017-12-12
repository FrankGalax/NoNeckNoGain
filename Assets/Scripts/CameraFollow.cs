using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    public float followSpeed = 1.0f;
    public float followAmount = 0.1f;

    GameObject mainPlayer;
    Vector3 camRef;

	// Use this for initialization
	void Start () {
        mainPlayer = GameObject.FindGameObjectWithTag("Player");

        
    }
	
	// Update is called once per frame
	void Update () {
        camRef = new Vector3(followAmount * mainPlayer.transform.position.x, transform.position.y, transform.position.z);
        transform.position = Vector3.Lerp(transform.position, camRef, followSpeed * Time.deltaTime);
    }
}
