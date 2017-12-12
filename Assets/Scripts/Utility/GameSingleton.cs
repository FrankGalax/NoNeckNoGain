using UnityEngine;
public class GameSingleton<T> : MonoBehaviour where T : GameSingleton<T>
{
    private static T _instance;

    public static T Instance
    {
        get
        {
            if (_instance == null)
            {
                _instance = GameObject.FindObjectOfType(typeof(T)) as T;

                if (_instance == null)
                {
                    GameObject gameObject = new GameObject(typeof(T).Name);

                    _instance = gameObject.AddComponent(typeof(T)) as T;
                }
            }

            return _instance;
        }
    }

    protected virtual void OnDestroy()
    {
        if (_instance)
            Destroy(_instance);

        _instance = null;
    }

    public void Resolve()
    {
        // Do nothing, this will force the object to be instantiated
    }
}