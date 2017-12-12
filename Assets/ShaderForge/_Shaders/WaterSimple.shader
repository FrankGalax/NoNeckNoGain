// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33198,y:32834,varname:node_3138,prsc:2|emission-5593-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32180,y:32837,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5552,x:32168,y:32595,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_5552,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1933,x:32423,y:32732,varname:node_1933,prsc:2|A-5552-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Tex2d,id:3002,x:31764,y:33040,varname:node_3002,prsc:2,ntxv:0,isnm:False|UVIN-334-OUT,TEX-2393-TEX;n:type:ShaderForge.SFN_Tex2d,id:4443,x:31764,y:33240,varname:node_4443,prsc:2,ntxv:0,isnm:False|UVIN-2734-OUT,TEX-2393-TEX;n:type:ShaderForge.SFN_TexCoord,id:4447,x:30858,y:32992,varname:node_4447,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6816,x:31076,y:33180,varname:node_6816,prsc:2|A-4447-UVOUT,B-8787-OUT;n:type:ShaderForge.SFN_Vector1,id:8787,x:30858,y:33246,varname:node_8787,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Time,id:2867,x:30961,y:32691,varname:node_2867,prsc:2;n:type:ShaderForge.SFN_Add,id:334,x:31449,y:32834,varname:node_334,prsc:2|A-415-OUT,B-4447-UVOUT;n:type:ShaderForge.SFN_Multiply,id:415,x:31208,y:32751,varname:node_415,prsc:2|A-2867-TSL,B-7177-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7177,x:30974,y:32852,ptovrint:False,ptlb:glare speed,ptin:_glarespeed,varname:node_7177,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Power,id:1763,x:32124,y:33050,varname:node_1763,prsc:2|VAL-3002-R,EXP-8129-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8129,x:31971,y:33134,ptovrint:False,ptlb:glarePower1,ptin:_glarePower1,varname:node_8129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4005,x:31961,y:33318,ptovrint:False,ptlb:glarePower2,ptin:_glarePower2,varname:_glarePower2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Power,id:2949,x:32124,y:33240,varname:node_2949,prsc:2|VAL-4443-R,EXP-4005-OUT;n:type:ShaderForge.SFN_Multiply,id:1705,x:32385,y:33125,varname:node_1705,prsc:2|A-1763-OUT,B-2949-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:2393,x:31598,y:33119,ptovrint:False,ptlb:Glare,ptin:_Glare,varname:node_2393,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2644,x:32595,y:33125,varname:node_2644,prsc:2|A-1705-OUT,B-2286-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2286,x:32385,y:33285,ptovrint:False,ptlb:glareInt,ptin:_glareInt,varname:node_2286,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:5593,x:32952,y:32834,varname:node_5593,prsc:2|A-1933-OUT,B-2644-OUT;n:type:ShaderForge.SFN_Subtract,id:2734,x:31521,y:33166,varname:node_2734,prsc:2|A-6816-OUT,B-9177-OUT;n:type:ShaderForge.SFN_Multiply,id:9177,x:31311,y:33180,varname:node_9177,prsc:2|A-2867-TSL,B-2331-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2331,x:31112,y:33103,ptovrint:False,ptlb:glare speed2,ptin:_glarespeed2,varname:_glarespeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:7241-5552-7177-8129-4005-2393-2286-2331;pass:END;sub:END;*/

Shader "Shader Forge/WaterSimple" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Diffuse ("Diffuse", 2D) = "white" {}
        _glarespeed ("glare speed", Float ) = 0
        _glarePower1 ("glarePower1", Float ) = 1
        _glarePower2 ("glarePower2", Float ) = 1
        _Glare ("Glare", 2D) = "white" {}
        _glareInt ("glareInt", Float ) = 1
        _glarespeed2 ("glare speed2", Float ) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _Color;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _glarespeed;
            uniform float _glarePower1;
            uniform float _glarePower2;
            uniform sampler2D _Glare; uniform float4 _Glare_ST;
            uniform float _glareInt;
            uniform float _glarespeed2;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float4 node_2867 = _Time + _TimeEditor;
                float2 node_334 = ((node_2867.r*_glarespeed)+i.uv0);
                float4 node_3002 = tex2D(_Glare,TRANSFORM_TEX(node_334, _Glare));
                float2 node_2734 = ((i.uv0*0.9)-(node_2867.r*_glarespeed2));
                float4 node_4443 = tex2D(_Glare,TRANSFORM_TEX(node_2734, _Glare));
                float3 emissive = ((_Diffuse_var.rgb*_Color.rgb)+((pow(node_3002.r,_glarePower1)*pow(node_4443.r,_glarePower2))*_glareInt));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
