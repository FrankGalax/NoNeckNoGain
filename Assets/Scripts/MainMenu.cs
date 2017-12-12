using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    void Awake()
    {
#if UNITY_WEBGL || UNITY_EDITOR
        Transform quit = transform.Find("Quit");
        if (quit != null)
        {
            quit.gameObject.SetActive(false);
        }
#endif
    }

    public void Play()
    {
        SceneManager.LoadScene("main");
    }

    public void Instructions()
    {
        SceneManager.LoadScene("instructions");
    }

    public void Credits()
    {
        SceneManager.LoadScene("credits");
    }

    public void Back()
    {
        SceneManager.LoadScene("menu");
    }

    public void Quit()
    {
        Application.Quit();
    }
}
