// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33200,y:32619,varname:node_3138,prsc:2|alpha-9413-OUT;n:type:ShaderForge.SFN_ScreenPos,id:6005,x:31620,y:32760,varname:node_6005,prsc:2,sctp:0;n:type:ShaderForge.SFN_Length,id:6520,x:31919,y:32750,varname:node_6520,prsc:2|IN-6005-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3822,x:32333,y:32750,varname:node_3822,prsc:2|A-6520-OUT,B-9233-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9233,x:32094,y:32900,ptovrint:False,ptlb:Int,ptin:_Int,varname:node_9233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Vector1,id:6815,x:32623,y:32537,varname:node_6815,prsc:2,v1:0;n:type:ShaderForge.SFN_Add,id:1377,x:32603,y:32756,varname:node_1377,prsc:2|A-3822-OUT,B-6006-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6006,x:32322,y:32928,ptovrint:False,ptlb:add,ptin:_add,varname:node_6006,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:9413,x:32910,y:32839,varname:node_9413,prsc:2|IN-1377-OUT;proporder:9233-6006;pass:END;sub:END;*/

Shader "Shader Forge/vignette" {
    Properties {
        _Int ("Int", Float ) = 0
        _add ("add", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Int;
            uniform float _add;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 screenPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
////// Lighting:
                float3 finalColor = 0;
                float node_6520 = length(i.screenPos.rg);
                float node_3822 = (node_6520*_Int);
                return fixed4(finalColor,saturate((node_3822+_add)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
