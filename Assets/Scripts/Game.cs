using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Game : GameSingleton<Game>
{
    public float GameTime = 60.0f;
    public float ComboPercent = 0.25f;
    public float StartDelay = 3.0f;

    private int m_Points;
    private int m_Combo;

    private int m_MaxCombo = 0;
    private int m_GoodFruitsEaten = 0;
    private int m_BadFruitsEaten = 0;
    private int m_CloseMisses = 0;

    private float m_GameTimer;
    private float m_StartTimer;
    public bool IsEnded { get; private set; }

    public int HighScore
    {
        get { return PlayerPrefs.GetInt("highscore"); }
        set { PlayerPrefs.SetInt("highscore", value); }
    }

    void Start()
    {
        m_Points = 0;
        m_Combo = 0;
        m_GameTimer = GameTime;
        m_StartTimer = StartDelay;
        IsEnded = false;

        if (StartDelay <= 0)
        {
            FindObjectOfType<ResourceManager>().SpawnFirstFruits();
        }
    }

    void Update()
    {
        if (m_StartTimer > 0)
        {
            m_StartTimer -= Time.deltaTime;
            if (m_StartTimer <= 0)
            {
                EnableForStartDelay();
            }
            else
            {
                return;
            }
        }

        if (m_GameTimer > 0)
        {
            m_GameTimer -= Time.deltaTime;
        }
        else if (!IsEnded)
        {
            IsEnded = true;
            EndGame();
        }
    }

    private void EndGame()
    {
        if (m_Points > HighScore)
        {
            HighScore = m_Points;
        }

        FindObjectOfType<ResourceManager>().enabled = false;
        PlayerController playerController = FindObjectOfType<PlayerController>();
        playerController.StopAnim();
        playerController.enabled = false;
        FindObjectOfType<HeadController>().enabled = false;
        GameUI.Instance.End();
    }

    private void EnableForStartDelay()
    {
        FindObjectOfType<ResourceManager>().SpawnFirstFruits();
    }

    public void AddPoints(int points)
    {
        m_Points = m_Points + (int)(points * (1 + m_Combo * ComboPercent));
        if (m_Points < 0)
        {
            m_Points = 0;
        }

        if (points > 0)
        {
            m_GoodFruitsEaten++;
        }
        else
        {
            m_BadFruitsEaten++;
        }
    }
    
    public void AddCombo()
    {
        ++m_Combo;

        if (m_Combo > m_MaxCombo)
        {
            m_MaxCombo = m_Combo;
        }
    }

    public void ResetCombo()
    {
        m_Combo = 0;
    }

    public void AddCloseMiss()
    {
        m_CloseMisses++;
    }

    public int GetPoints() { return m_Points; }
    public float GetGameTime() { return m_GameTimer; }
    public int GetCombo() { return m_Combo; }
    public int GetGoodFruitsEaten() { return m_GoodFruitsEaten; }
    public int GetBadFruitsEaten() { return m_BadFruitsEaten; }
    public int GetMaxCombo() { return m_MaxCombo; }
    public int GetCloseMisses() { return m_CloseMisses; }
}
