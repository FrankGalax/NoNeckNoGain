using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioBank : MonoBehaviour
{
    public List<AudioClip> Clips;


    private int m_offset = 0;

    public AudioClip Get()
    {
        if (m_offset == Clips.Count - 1)
        {
            m_offset = 0;
        }

        int index = Random.Range(m_offset, Clips.Count -1 );
        AudioClip toPlay = Clips[index];
        AudioClip swap = Clips[m_offset];
        Clips[m_offset] = toPlay;
        Clips[index] = swap;
        m_offset++;

        return toPlay;
    }
}
