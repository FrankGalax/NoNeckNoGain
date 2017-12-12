using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : GameSingleton<AudioManager>
{
    public enum AudioBankType
    {
        GoodFruit,
        BadFruit,
        CloseMiss,
        Idle,
    }

    public AudioBank GoodFruitBank;
    public AudioBank BadFruitBank;
    public AudioBank CloseMissBank;
    public AudioBank IdleBank;
    public float PlayIdleAfterInactivty;
    public AudioSource EndGameJingle;
    public float TimeLeftBeforeJingle;

    private float m_LastPlayedTimer = 0.0f;

    private bool m_PlayedEndJingle = false;

    void Start()
    {
        m_LastPlayedTimer = 0.0f;
        m_PlayedEndJingle = false;
    }

    void Update()
    {
        if (Game.Instance.IsEnded)
        {
            return;
        }

        if (!m_PlayedEndJingle && Game.Instance.GetGameTime() <= TimeLeftBeforeJingle)
        {
            EndGameJingle.Play();
            m_PlayedEndJingle = true;
        }

        m_LastPlayedTimer += Time.deltaTime;
        if (m_LastPlayedTimer >= PlayIdleAfterInactivty)
        {
            Play(AudioBankType.Idle);
        }
    }

    public void Play(AudioBankType type)
    {
        AudioSource audioSource = GetComponent<AudioSource>();

        if (audioSource.isPlaying)
        {
            return;
        }

        AudioClip clip = null;
   
        switch (type)
        {
            case AudioBankType.GoodFruit: clip = GoodFruitBank.Get(); break;
            case AudioBankType.BadFruit: clip = BadFruitBank.Get(); break;
            case AudioBankType.CloseMiss: clip = CloseMissBank.Get(); break;
            case AudioBankType.Idle: clip = IdleBank.Get(); break;
        }

        audioSource.clip = clip;
        audioSource.Play();

        m_LastPlayedTimer = 0.0f;
    }

    private bool IsPlaying()
    {
        return GetComponent<AudioSource>().isPlaying;
    }
}
