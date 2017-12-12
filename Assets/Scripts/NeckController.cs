using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NeckController : MonoBehaviour
{
    public List<NeckBone> Bones;
    public float NeckAngleAcceleration = -1.0f;
    public float NeckLengthSpeed = 1.0f;
    public float MaxNeckAngle = 30.0f;
    public float MinNeckBoneLength = 0.1f;
    public float MaxNeckBoneLength = 0.5f;
    public Vector3 UpLocalVector;
    public float LengthAngleMultiplier = 1.0f;
    public float InitialNeckRoll;
    public float MaxNeckAngleSpeed = 5.0f;

    private float m_MaxNeckAngleRad;
    private float m_CurrentNeckAngleSpeed;

    void Start()
    {
        float initialLength = Bones.Count >= 2 ? (Bones[1].BoneTransform.position - Bones[0].BoneTransform.position).magnitude : 0.3f;
        Bones.ForEach(p =>
        {
            p.Angle = 0;
            p.Length = initialLength;
        });
        m_MaxNeckAngleRad = Mathf.Deg2Rad * MaxNeckAngle;
    }
    
    void LateUpdate()
    {
        for (int i = 0; i < Bones.Count; ++i)
        {
            NeckBone bone = Bones[i];
            bone.Angle += m_CurrentNeckAngleSpeed * bone.AngleMultiplier * Time.deltaTime;
            if (Mathf.Abs(bone.Angle) > m_MaxNeckAngleRad)
            {
                m_CurrentNeckAngleSpeed = 0.0f;
            }
            bone.Angle = Mathf.Clamp(bone.Angle, -m_MaxNeckAngleRad, m_MaxNeckAngleRad);

            bool isFirst = i == 0;
            float angle = Mathf.Sin(bone.Angle) * MaxNeckAngle + (isFirst ? InitialNeckRoll : 0);
            Quaternion quat = Quaternion.Euler(0, angle, isFirst ? 15 : 0);
            bone.BoneTransform.localRotation = quat;

            if (i > 0)
            {
                NeckBone previousBone = Bones[i - 1];
                bone.BoneTransform.localPosition = UpLocalVector * previousBone.Length;
            }
        }
    }

    public void AddNeckAngle(float angle)
    {
        m_CurrentNeckAngleSpeed += angle * NeckAngleAcceleration * Time.deltaTime;
        m_CurrentNeckAngleSpeed = Mathf.Clamp(m_CurrentNeckAngleSpeed, -MaxNeckAngleSpeed, MaxNeckAngleSpeed);
    }

    public void AddNeckBoneLength(float length)
    {
        foreach (NeckBone bone in Bones)
        {
            float oldLength = bone.Length;
            bone.Length += length * NeckLengthSpeed * Time.deltaTime;
            bone.Length = Mathf.Clamp(bone.Length, MinNeckBoneLength, MaxNeckBoneLength);
            if (bone.Length != oldLength)
            {
                float multiplier = Mathf.Max(1.0f + LengthAngleMultiplier * length * Time.deltaTime, 0.0f);
                bone.Angle *= multiplier;
                bone.Angle = Mathf.Clamp(bone.Angle, -m_MaxNeckAngleRad, m_MaxNeckAngleRad);
            }
        }
    }
}
