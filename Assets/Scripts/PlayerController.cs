using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    public float Acceleration = 1.0f;
    public float Deceleration = 0.5f;
    public float MaxSpeed = 10.0f;

    private Vector3 m_CurrentSpeed;
    private Rigidbody m_Rigidbody;
    private NeckController m_NeckController;
    private Animator m_Animator;

    void Start()
    {
        m_CurrentSpeed = Vector3.zero;
        m_Rigidbody = GetComponent<Rigidbody>();
        m_NeckController = GetComponent<NeckController>();
        m_Animator = GetComponentInChildren<Animator>();
    }

    void FixedUpdate()
    {
        float horizontal = Input.GetAxis("Horizontal");
        float vertical = Input.GetAxis("Vertical");
        
        if (horizontal != 0)
        {
            m_CurrentSpeed += horizontal * Vector3.right * Acceleration * Time.deltaTime;
            if (m_CurrentSpeed.magnitude > MaxSpeed)
            {
                m_CurrentSpeed = MaxSpeed * Vector3.right * Mathf.Sign(m_CurrentSpeed.x);
            }
        }
        else
        {
            float scalarSpeed = m_CurrentSpeed.magnitude;
            scalarSpeed -= Deceleration * Time.deltaTime;
            if (scalarSpeed < 0)
            {
                scalarSpeed = 0;
            }
            m_CurrentSpeed = scalarSpeed * Vector3.right * Mathf.Sign(m_CurrentSpeed.x);
        }

        m_Rigidbody.MovePosition(transform.position + m_CurrentSpeed * Time.deltaTime);
        m_NeckController.AddNeckAngle(horizontal);
        m_NeckController.AddNeckBoneLength(vertical);
    }

    void Update()
    {
        if (m_Animator != null)
        {
            m_Animator.SetFloat("Speed", m_CurrentSpeed.x);
        }

        if (Input.GetKeyDown(KeyCode.Space))
        {
            SceneManager.LoadScene("main");
        }
    }

    public void StopAnim()
    {
        if (m_Animator != null)
        {
            m_Animator.SetFloat("Speed", 0.0f);
        }
    }

    private void OnTriggerStay(Collider other)
    {
        WarpController warpController = other.GetComponent<WarpController>();
        if (warpController != null)
        {
            bool canEnter = warpController.PlayerWarpSpeed == Vector3.zero ||
                (m_CurrentSpeed != Vector3.zero && Mathf.Sign(m_CurrentSpeed.x) != Mathf.Sign(warpController.PlayerWarpSpeed.x));
            if (canEnter)
            {
                warpController.Exit.PlayerWarpSpeed = m_CurrentSpeed;
                Vector3 deltaEnter = warpController.transform.position - transform.position;
                Vector3 warpTo = warpController.Exit.transform.position + deltaEnter * 0.5f;
                transform.position = warpTo;
            }    
        }
    }

    private void OnCollisionStay(Collision collision)
    {
        if (collision.collider.GetComponent<Blocker>())
        {
            m_CurrentSpeed = Vector3.zero;
        }
    }
}
