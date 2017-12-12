using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AIController : MonoBehaviour {
    public float Speed = 5;
    public float Delay = 30.0f;

    private float m_Timer;
    private Rigidbody m_Rigidbody;
    private float m_DeleteX;
    
    void Start()
    {
        m_Timer = Delay;
        m_Rigidbody = GetComponent<Rigidbody>();
        m_DeleteX = -transform.position.x;
        float radAngle = Mathf.Deg2Rad * 30.0f;
        GetComponent<NeckController>().AddNeckAngle(Random.Range(-radAngle, radAngle));
    }

    void Update()
    {
        if (m_Timer > 0)
        {
            m_Timer -= Time.deltaTime;
            if (m_Timer < 0)
            {
                StartRunning();
            }
            return;
        }
        
        if (transform.position.x > m_DeleteX)
        {
            Destroy(gameObject);
        }
    }

    void FixedUpdate()
    {
        if (m_Timer > 0)
        {
            return;
        }

        Vector3 nextPosition = transform.position + Speed * Vector3.right * Time.deltaTime;
        m_Rigidbody.MovePosition(nextPosition);
    }

    private void StartRunning()
    {
        GetComponentInChildren<Animator>().SetFloat("Speed", Speed);
    }
}
