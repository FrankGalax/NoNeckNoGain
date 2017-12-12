using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GFX_FruitExplode : MonoBehaviour {

    public GameObject[] chunks;
    public float force = 1.0f;
    public float torque = 1.0f;

    // Use this for initialization
    void Start() {
        StartCoroutine("DestroyFruit");
        foreach(GameObject g in chunks)
        {
            g.GetComponent<Rigidbody>().AddForce(new Vector3(Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f)) * force);
            g.GetComponent<Rigidbody>().AddTorque(new Vector3(Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f), Random.Range(-1.0f, 1.0f)) * torque);
        }
    }


    IEnumerator DestroyFruit()
    {
        yield return new WaitForSeconds(5.0f);

        foreach (GameObject g in chunks)
        {
            g.GetComponent<Rigidbody>().isKinematic = true;
        }


        float i = 1.0f;
        while(i > 0.1f)
        {
            foreach (GameObject g in chunks)
            {
                g.transform.localScale = i * Vector3.one;
                i -= 0.1f * Time.deltaTime;
            }
            yield return null;
        }

        Destroy(this.gameObject);
    }
}
