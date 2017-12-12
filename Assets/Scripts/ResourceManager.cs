using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResourceManager : MonoBehaviour
{
    public FruitSpawner GoodFruitSpawner;
    public FruitSpawner BadFruitSpawner;

    public int StartingGoodFruits = 1;
    public int MaxBadFruitsInScene = 5;

    public float SpawnBadFruitTimer = 7.0f;
    private float m_BadFruitTimer = 0.0f;
    private bool m_DelayBadFruitSpawn = false;

    public void SpawnFirstFruits()
    {
        for (int i = 0; i < StartingGoodFruits; ++i)
        {
            GoodFruitSpawner.SpawnFruit();
        }
    }

    private void Update()
    {
        m_BadFruitTimer += Time.deltaTime;
        if (m_BadFruitTimer >= SpawnBadFruitTimer)
        {
            m_DelayBadFruitSpawn = BadFruitSpawner.GetAlive() >= MaxBadFruitsInScene;

            if (!m_DelayBadFruitSpawn)
            {
                SpawnBadFruit();
            }
        }

        if (m_DelayBadFruitSpawn && BadFruitSpawner.GetAlive() < MaxBadFruitsInScene)
        {
            BadFruitSpawner.SpawnFruit();
        }
    }

    private void SpawnBadFruit()
    {
        BadFruitSpawner.SpawnFruit();
        m_BadFruitTimer = 0.0f;
    }

    public void Consume(FruitController fruit)
    {
        int points = fruit.Points;
        Game.Instance.AddPoints(points);
        fruit.Explode();

        if (points > 0)
        {
            Game.Instance.AddCombo();
            GoodFruitSpawner.SpawnFruit();
            AudioManager.Instance.Play(AudioManager.AudioBankType.GoodFruit);
        }
        else
        {
            Game.Instance.ResetCombo();
            BadFruitSpawner.Consume();
            AudioManager.Instance.Play(AudioManager.AudioBankType.BadFruit);
        }
    }
}
