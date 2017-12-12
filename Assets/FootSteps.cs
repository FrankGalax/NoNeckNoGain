using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FootSteps : MonoBehaviour {

    public Transform foot1;
    public Transform foot2;
    public Transform foot3;
    public Transform foot4;

    public GameObject gFXSmoke;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void Smoke1()
    {
        gFXSmoke.transform.position = foot1.position;
        gFXSmoke.GetComponent<ParticleSystem>().Play();
    }
    public void Smoke2()
    {
        gFXSmoke.transform.position = foot2.position;
        gFXSmoke.GetComponent<ParticleSystem>().Play();
    }
    public void Smoke3()
    {
        gFXSmoke.transform.position = foot3.position;
        gFXSmoke.GetComponent<ParticleSystem>().Play();
    }
    public void Smoke4()
    {
        gFXSmoke.transform.position = foot4.position;
        gFXSmoke.GetComponent<ParticleSystem>().Play();
    }
}
