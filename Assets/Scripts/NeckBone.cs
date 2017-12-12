using System;
using UnityEngine;

[Serializable]
public class NeckBone
{
    public Transform BoneTransform;
    public float Angle { get; set; }
    public float AngleMultiplier = 0.8f;
    public float Length { get; set; }
}
