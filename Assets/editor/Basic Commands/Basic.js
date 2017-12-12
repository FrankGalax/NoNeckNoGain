class Basic extends EditorWindow {

    // Add menu named "Basic Commands" to the Window menu
    
    @MenuItem ("Window/Basic Commands")
    
    static function Init () {
    	
        // Get existing open window or if none, make a new one:
        
        var window;
        
        if(EditorWindow.GetWindow(typeof(Basic)) == null) {
        
        	window = ScriptableObject.CreateInstance.<Basic>();
        	
        }    
        
        else
        
        {
        
        	window = EditorWindow.GetWindow(typeof(Basic));
        	
        }
        
        window.Show();
        
    }
    
	// Vars for Path
	
	var thisScript;
    
    var scriptPath;
    
    // Vars For Basic
    
    var objectsToAlign : Transform[];
    
    var highlightIcons : Transform[];
    
    var alignImgString : String;
    
    var once = true;
    
    // Window Code
    
    function OnGUI () {
    	
    	// Title
    	
        GUI.Label ( Rect ( 10 , 8 , 100 , 40 ) , "Basic Tools" , EditorStyles.boldLabel ) ;
        
        GUI.Label ( Rect ( 50 + ( 45 * 3 ) , 8 , 100 , 40 ) , "Quick Creation" , EditorStyles.boldLabel ) ;
        
        GUI.Box ( Rect ( 5 , 5 , 146 , 73 ) , "" ) ;
        
        GUI.Box ( Rect ( 45 + ( 45 * 3 ) , 5 , 745 , 73 ) , "" ) ;
        
        //Button Images
        
        // Get Script Path
    
	    thisScript = MonoScript.FromScriptableObject(this);
	    
	    scriptPath = AssetDatabase.GetAssetPath(thisScript);
	    
	    scriptPath = scriptPath.Substring(0, scriptPath.Length - 8);
	    
	    if (once) {
	    
	    	alignImgString = scriptPath + "TEXTURE_GUI_Button_Align.psd";
	    	
	    	objectsToAlign = new Array();
	    	
	    	once = !once;
	    	
	    }
	    
	    //alignImgString = scriptPath + "TEXTURE_GUI_Button_Align.psd";
        
        // Textures Quick Commands
        
        var alignImg : Texture = AssetDatabase.LoadAssetAtPath(alignImgString, typeof(Texture2D)) as Texture2D;
        
        var zeroImg : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_Zero.psd", typeof(Texture2D)) as Texture2D;
        
        var camImg : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_Camera.psd", typeof(Texture2D)) as Texture2D;
        
        // Textures Quick Objects
        
        var qkEmpty : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_Empty.psd", typeof(Texture2D)) as Texture2D;
        
        var qkParticle : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkParticle.psd", typeof(Texture2D)) as Texture2D;
        
        var qkCam : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkCam.psd", typeof(Texture2D)) as Texture2D;
        
        var qkGuiText : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkGuiText.psd", typeof(Texture2D)) as Texture2D;
        
        var qkGuiTexture : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkGuiTexture.psd", typeof(Texture2D)) as Texture2D;
        
        var qk3dText : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qk3dText.psd", typeof(Texture2D)) as Texture2D;
        
        var qkLightDirect : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkLightDirect.psd", typeof(Texture2D)) as Texture2D;
                
        var qkLightOmni : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkLightOmni.psd", typeof(Texture2D)) as Texture2D;
        
        var qkLightSpot : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkLightSpot.psd", typeof(Texture2D)) as Texture2D;
        
        var qkLightArea : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkLightArea.psd", typeof(Texture2D)) as Texture2D;
        
        var qkObjCube : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkObjCube.psd", typeof(Texture2D)) as Texture2D;
        
        var qkObjSphere : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkObjSphere.psd", typeof(Texture2D)) as Texture2D;
        
        var qkObjCapsule : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkObjCapsule.psd", typeof(Texture2D)) as Texture2D;
        
        var qkObjCylinder : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkObjCylinder.psd", typeof(Texture2D)) as Texture2D;
        
        var qkObjPlane : Texture = AssetDatabase.LoadAssetAtPath(scriptPath + "TEXTURE_GUI_Button_qkObjPlane.psd", typeof(Texture2D)) as Texture2D;
        
        ////////Basic Commands//////////////
        
        var buttonSize : float = 45;
        
        //Align
        
        if( GUI.Button( Rect ( 10 , 25 , buttonSize , buttonSize ) , GUIContent ( alignImg, "Align Selected Object with Next Selection" ) ) ) {
        
        	if(Selection.transforms.Length == 0) {
        	
        		Debug.LogError("No Objects to Align. Select one or more objects to Align with next selection.");
        		
        	}
        	
        	else
        	
        	{
        	
        		alignImgString = scriptPath + "TEXTURE_GUI_Button_AlignOn.psd" ;
        		
        		objectsToAlign = Selection.transforms;
        	
        	}
        	
       	}
       	
       	//Set Object at Zero
       	
       	if( GUI.Button( Rect ( 10 + buttonSize , 25 , buttonSize , buttonSize ) , GUIContent ( zeroImg, "Set the position of selected objects to the center of the World" ) ) ) {
       	
        	if(Selection.transforms.Length == 0) {
        	
        		Debug.LogError("No Objects selected. Select one or more objects to set at world center.");
        		
        	}
        	
        	else
        	
        	{
        	
        		for(i = 0; i < Selection.transforms.Length; i++) {
        	
	        		Undo.RecordObject(Selection.transforms[i].transform, "Zero " + Selection.transforms[i].name);
	        		
	        		Selection.transforms[i].position = Vector3.zero;
	        		
	        	}
        	
        	}
        	
       	}
       	
       	//Set Object in front of camera
       	
       	if( GUI.Button( Rect ( 10 + (buttonSize * 2) , 25 , buttonSize , buttonSize ) , GUIContent ( camImg, "Set the position of selected objects in front of the editor camera" ) ) ) {
       	
        	if(Selection.transforms.Length == 0) {
        	
        		Debug.LogError("No Objects selected. Select one or more objects to set in front of the editor camera.");
        		
        	}
        	
        	else
        	
        	{
        	
        		for(i = 0; i < Selection.transforms.Length; i++) {
        		
	        		Undo.RecordObject(Selection.transforms[i].transform, "Camera " + Selection.transforms[i].name);
	        		
	        		Selection.transforms[i].position = SceneView.lastActiveSceneView.camera.transform.position;
	        		
	        		Selection.transforms[i].Translate( Vector3(0,0,10) , SceneView.lastActiveSceneView.camera.transform);
	        		
	        	}
        	
        	}
        	
       	}
       	
       	//////////Quick Object Creation////////////
       	
       	//Create Quick Object
       	
       	
       	
       	if( GUI.Button ( Rect (  50 + ( buttonSize * 3 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkEmpty , "Create Empty Object" ) ) ) {
       	
       		var obj : GameObject = new GameObject ( GetName ( "Game Object " ) ) ;
       		
       		Selection.activeGameObject = obj ;
        	
       	}
       	
       	if( GUI.Button ( Rect (  70 + ( buttonSize * 4 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkParticle , "Create Particle System" ) ) ) {
			
			var part : GameObject = new GameObject ( GetName ( "Particle System " ) ) ;
			
			part.AddComponent( ParticleSystem ) ;
			
			Selection.activeGameObject = part ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  70 + ( buttonSize * 5 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkCam , "Create Camera" ) ) ) {
			
			var cam : GameObject = new GameObject ( GetName ( "Camera " ) ) ;
			
			cam.AddComponent( Camera ) ;
			
			cam.AddComponent( GUILayer ) ;
			
			cam.AddComponent.<FlareLayer>() ;
			
			Selection.activeGameObject = cam ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  70 + ( buttonSize * 6 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkGuiText , "Create GUI Text" ) ) ) {
			
			var guiText : GameObject = new GameObject ( GetName ( "GUI Text " ) ) ;
			
			guiText.AddComponent( GUIText ) ;
			
			guiText.transform.position = Vector3 ( 0.5 , 0.5 , 0 ) ;
			
			Selection.activeGameObject = guiText ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  70 + ( buttonSize * 7 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkGuiTexture , "Create GUI Texture" ) ) ) {
       	
       		var guiTexture : GameObject = new GameObject ( GetName ( "GUI Texture " ) ) ;
			
			guiTexture.AddComponent( GUITexture ) ;

			guiTexture.transform.position = Vector3 ( 0.5 , 0.5 , 0 ) ;
			
			Selection.activeGameObject = guiTexture ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  70 + ( buttonSize * 8 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qk3dText , "Create 3D Text" ) ) ) {
       	
       		var d3Text : GameObject = new GameObject ( GetName ( "GUI Texture " ) ) ;
			
			d3Text.AddComponent( TextMesh ) ;
			
			d3Text.AddComponent( MeshRenderer ) ;
			
			d3Text.GetComponent( TextMesh ).text = "3D Text" ;
			
			d3Text.GetComponent( TextMesh ).font = Resources.GetBuiltinResource(typeof(Font), "Arial.ttf" ) ;
			
			d3Text.GetComponent.<Renderer>().material = Resources.GetBuiltinResource(typeof(Material), "Font Material.mat" ) ;
			
			Selection.activeGameObject = d3Text ;

        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  90 + ( buttonSize * 9 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkLightDirect , "Create Directional Light" ) ) ) {
       	
       		var lightDir : GameObject = new GameObject ( GetName ( "Light Directional " ) ) ;
			
			lightDir.AddComponent( Light ) ;
			
			lightDir.GetComponent.<Light>().type = LightType.Directional ;
			
			Selection.activeGameObject = lightDir ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  90 + ( buttonSize * 10 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkLightOmni , "Create Point Light" ) ) ) {
       	
       		var lightpoi : GameObject = new GameObject ( GetName ( "Light Point " ) ) ;
			
			lightpoi.AddComponent( Light ) ;
			
			lightpoi.GetComponent.<Light>().type = LightType.Point ;
			
			Selection.activeGameObject = lightpoi ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  90 + ( buttonSize * 11 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkLightSpot , "Create Spot Light" ) ) ) {
       	
       		var lightSpo : GameObject = new GameObject ( GetName ( "Light Spot " ) ) ;
			
			lightSpo.AddComponent( Light ) ;
			
			lightSpo.GetComponent.<Light>().type = LightType.Spot ;
			
			Selection.activeGameObject = lightSpo ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  90 + ( buttonSize * 12 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkLightArea , "Create Area Light" ) ) ) {
       	
       		var lightArea : GameObject = new GameObject ( GetName ( "Light Area " ) ) ;
			
			lightArea.AddComponent( Light ) ;
			
			lightArea.GetComponent.<Light>().type = LightType.Area ;
			
			Selection.activeGameObject = lightArea ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  110 + ( buttonSize * 13 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkObjCube , "Create Cube" ) ) ) {
       	
       		var objCube : GameObject = new GameObject.CreatePrimitive(PrimitiveType.Cube);
			
			objCube.name = GetName ( "Object Cube " ) ;
			
			Selection.activeGameObject = objCube ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  110 + ( buttonSize * 14 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkObjSphere , "Create Sphere" ) ) ) {
       	
       		var objSphere : GameObject = new GameObject.CreatePrimitive(PrimitiveType.Sphere);
			
			objSphere.name = GetName ( "Object Sphere " ) ;
			
			Selection.activeGameObject = objSphere ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  110 + ( buttonSize * 15 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkObjCapsule , "Create Capsule" ) ) ) {
       	
       		var objCapsule : GameObject = new GameObject.CreatePrimitive(PrimitiveType.Capsule);
			
			objCapsule.name = GetName ( "Object Capsule " ) ;
			
			Selection.activeGameObject = objCapsule ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  110 + ( buttonSize * 16 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkObjCylinder , "Create Cylinder" ) ) ) {
       	
       		var objCylinder : GameObject = new GameObject.CreatePrimitive(PrimitiveType.Cylinder);
			
			objCylinder.name = GetName ( "Object Cylinder " ) ;
			
			Selection.activeGameObject = objCylinder ;
        	
       	}
       	
       	
       	
       	if( GUI.Button ( Rect (  110 + ( buttonSize * 17 ) , 25 , buttonSize , buttonSize ) , GUIContent ( qkObjPlane , "Create Plane" ) ) ) {
       	
       		var objPlane : GameObject = new GameObject.CreatePrimitive(PrimitiveType.Plane);
			
			objPlane.name = GetName ( "Object Plane " ) ;
			
			Selection.activeGameObject = objPlane ;
        	
       	}
       	
    }
    
    //////////////////// Based on Selection Changed
    
    function OnSelectionChange () {
    	
    	//Align Continued
    	
    	if ( objectsToAlign.Length != 0 ) {
    		
    		for(i = 0 ; i < objectsToAlign.Length ; i++ ) {
    		
    			if ( Selection.activeTransform != null ) {
    			
    				Undo.RecordObject(objectsToAlign[i].transform, "Align " + objectsToAlign[i].name);
    				
    				objectsToAlign[i].position = Selection.activeTransform.position;
    				
    			}
    	
	    		else
	    		
	    		{
	    			
	    			Debug.LogError("No target selected, aborting Align.");
	    			
	    		}
	    		
	    	}
	    	
	    	objectsToAlign = new Array();
	    	
	    	alignImgString = scriptPath + "TEXTURE_GUI_Button_Align.psd" ;
	    	
	    	this.Repaint();
    		
    	}
    
    }
    
    ////////////// Other Functions
    
    // Get Any Object a new Name
    
    function GetName ( name : String ) {
    
    	var j : int = 1;
       	
   		while ( j >= 1 ) {
   		
   			if ( GameObject.Find ( name + j ) == null ) {
   			
   				return  name + j ;
   			
   			}
   			
   			else
   			
   			{
   			
   				j++;
   			
   			}
   		
   		}
    
    }
    
}