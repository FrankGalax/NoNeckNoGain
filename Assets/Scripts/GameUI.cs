using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameUI : GameSingleton<GameUI>
{
    private Text m_PointsText;
    private Text m_TimeText;
    private Text m_ComboText;
    private Text m_HighScoreText;
    private Transform m_VictoryPanel;
    private Transform m_PointsPanel;
    private Transform m_ComboPanel;
    private Transform m_TimePanel;
    private Transform m_HighScorePanel;
    private bool m_IsEnded;

    void Awake()
    {
        m_VictoryPanel = transform.Find("VictoryPanel");
        m_PointsPanel = transform.Find("PointsPanel");
        m_ComboPanel = transform.Find("ComboPanel");
        m_TimePanel = transform.Find("TimePanel");
        m_HighScorePanel = transform.Find("HighscorePanel");

        m_VictoryPanel.gameObject.SetActive(false);
    }

    void Start()
    {
        m_PointsText = m_PointsPanel.Find("PointsText").GetComponent<Text>();
        m_TimeText = m_TimePanel.Find("TimeText").GetComponent<Text>();
        m_ComboText = m_ComboPanel.Find("ComboText").GetComponent<Text>();
        m_HighScoreText = m_HighScorePanel.Find("HighscoreText").GetComponent<Text>();
        m_IsEnded = false;
    }

    void Update()
    {
        m_HighScoreText.text = Game.Instance.HighScore.ToString();

        if (!m_IsEnded)
        {
            m_PointsText.text = Game.Instance.GetPoints().ToString();
            m_TimeText.text = FormatTime(Game.Instance.GetGameTime());
            m_ComboText.text = Game.Instance.GetCombo().ToString();
        }
    }

    public void End()
    {
        m_IsEnded = true;

        m_VictoryPanel.gameObject.SetActive(true);

        m_PointsPanel.gameObject.SetActive(false);
        m_TimePanel.gameObject.SetActive(false);
        m_ComboPanel.gameObject.SetActive(false);

        m_VictoryPanel.Find("VictoryText").GetComponent<Text>().text =
            Game.Instance.GetPoints() + " points!";

        m_VictoryPanel.Find("GoodEatenPanel").Find("GoodEatenText").GetComponent<Text>().text = Game.Instance.GetGoodFruitsEaten().ToString();
        m_VictoryPanel.Find("BadEatenPanel").Find("BadEatenText").GetComponent<Text>().text = Game.Instance.GetBadFruitsEaten().ToString();
        m_VictoryPanel.Find("MaxComboPanel").Find("MaxComboText").GetComponent<Text>().text = Game.Instance.GetMaxCombo().ToString();
        m_VictoryPanel.Find("CloseMissesPanel").Find("CloseMissesText").GetComponent<Text>().text = Game.Instance.GetCloseMisses().ToString();
    }

    public void PlayAgain()
    {
        SceneManager.LoadScene("main");
    }

    public void MainMenu()
    {
        SceneManager.LoadScene("menu");
    }

    private string FormatTime(float seconds)
    {
        int ceilSeconds = (int)Mathf.Ceil(seconds);
        int minutes = ceilSeconds / 60;
        int secs = ceilSeconds % 60;
        return minutes + ":" + (secs < 10 ? "0" : "") + secs;
    }
}
