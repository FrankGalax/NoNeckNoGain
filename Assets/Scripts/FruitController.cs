using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FruitController : MonoBehaviour
{
    public int Points = 10;
    public GameObject ExplosionGfx;

    void Start()
    {
        FindObjectOfType<HeadController>().NotifyNewFruit(this);
    }

    public void Explode()
    {
        Instantiate(ExplosionGfx, transform.position, transform.rotation);
        Destroy(gameObject);
    }
}
