using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FruitSpawner : MonoBehaviour
{
    public GameObject FruitPrefab;

    private int m_Spawned = 0;
    private int m_SpawnCount = 0;

    private int m_Alive = 0;

    private Transform m_LastUsedTransform = null;

    private List<Transform> m_SpawnPoints = new List<Transform>();

    public int GetAlive() { return m_Alive; }
    public void Consume() { m_Alive--; }

    void Awake()
    {
        foreach (Transform child in transform)
        {
            m_SpawnPoints.Add(child);
        }

        m_SpawnCount = m_SpawnPoints.Count;
    }

    public void SpawnFruit()
    {
        if (m_Spawned == m_SpawnCount - 1)
        {
            m_Spawned = 0;
        }

        int index = 0;
        do
        {
            index = Random.Range(m_Spawned, m_SpawnCount - 1);
        }
        while (m_SpawnPoints[index].Equals(m_LastUsedTransform));
 
        Transform toSpawn = m_SpawnPoints[index];
        Transform swap = m_SpawnPoints[m_Spawned];
        m_SpawnPoints[m_Spawned] = toSpawn;
        m_SpawnPoints[index] = swap;
        m_Spawned++;
        m_Alive++;

        SpawnObject(FruitPrefab, toSpawn);

        m_LastUsedTransform = toSpawn;
    }

    void SpawnObject(GameObject obj, Transform transform)
    {
        Instantiate(obj, transform);
    }
}
