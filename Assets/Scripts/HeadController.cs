using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class HeadController : MonoBehaviour
{
    public Transform HeadTransform;
    public Vector3 LocalOffset;
    public Vector3 OrientationOffset;
    public float FruitProximityThreshold = 1.0f;
    public AudioClip FruitMissSound;

    private ResourceManager m_ResourceManager;
    private List<FruitProximity> m_FruitProximities = new List<FruitProximity>();
    private float m_FruitProximityThresholdSq;

    void Start()
    {
        m_ResourceManager = FindObjectOfType<ResourceManager>();
        transform.parent = HeadTransform;
        transform.localPosition = LocalOffset;
        transform.localRotation = Quaternion.Euler(OrientationOffset.x, OrientationOffset.y, OrientationOffset.z);
        m_FruitProximityThresholdSq = FruitProximityThreshold * FruitProximityThreshold;
    }

    void Update()
    {
        for (int i = 0; i < m_FruitProximities.Count; ++i)
        {
            FruitProximity fruitProximity = m_FruitProximities[i];
            float distanceSq = GetFruitDistanceSq(fruitProximity.m_Fruit);
            if (fruitProximity.m_CanCloseMiss)
            {
                if (distanceSq > m_FruitProximityThresholdSq)
                {
                    FruitCloseMiss(fruitProximity.m_Fruit.Points > 0);
                    fruitProximity.m_CanCloseMiss = false;
                }
            }
            else
            {
                if (distanceSq < m_FruitProximityThresholdSq)
                {
                    fruitProximity.m_CanCloseMiss = true;
                }
            }
            m_FruitProximities[i] = fruitProximity;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        FruitController fruit = other.GetComponent<FruitController>();
        if (fruit)
        {
            for (int i = 0; i < m_FruitProximities.Count; ++i)
            {
                if (m_FruitProximities[i].m_Fruit == fruit)
                {
                    m_FruitProximities.RemoveAt(i);
                    break;
                }
            }

            m_ResourceManager.Consume(fruit);
        }
    }

    public void NotifyNewFruit(FruitController fruit)
    {
        m_FruitProximities.Add(new FruitProximity
        {
            m_Fruit = fruit,
            m_CanCloseMiss = false
        });
    }

    private float GetFruitDistanceSq(FruitController fruit)
    {
        return (fruit.transform.position - transform.position).sqrMagnitude;
    }

    private void FruitCloseMiss(bool isGoodFood)
    {
        if (isGoodFood)
        {
            Game.Instance.AddCloseMiss();
            AudioManager.Instance.Play(AudioManager.AudioBankType.CloseMiss);
        }
    }

    private struct FruitProximity
    {
        public FruitController m_Fruit;
        public bool m_CanCloseMiss;
    }
}
