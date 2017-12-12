// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:35345,y:32970,varname:node_9361,prsc:2|emission-1474-OUT,custl-5085-OUT,olwid-3762-OUT,olcol-5297-RGB,voffset-8654-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:8068,x:33281,y:33079,varname:node_8068,prsc:2;n:type:ShaderForge.SFN_LightColor,id:3406,x:33281,y:32945,varname:node_3406,prsc:2;n:type:ShaderForge.SFN_LightVector,id:6869,x:31590,y:32461,varname:node_6869,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:9684,x:31590,y:32600,prsc:2,pt:False;n:type:ShaderForge.SFN_Dot,id:7782,x:31802,y:32504,cmnt:Lambert,varname:node_7782,prsc:2,dt:1|A-6869-OUT,B-9684-OUT;n:type:ShaderForge.SFN_Tex2d,id:851,x:31802,y:32156,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_851,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1941,x:32996,y:32492,cmnt:Diffuse Contribution,varname:node_1941,prsc:2|A-544-OUT,B-5379-OUT;n:type:ShaderForge.SFN_Color,id:5927,x:31802,y:32341,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5927,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5085,x:33526,y:32945,cmnt:Attenuate and Color,varname:node_5085,prsc:2|A-1941-OUT,B-3406-RGB,C-8068-OUT,D-2737-OUT;n:type:ShaderForge.SFN_Multiply,id:544,x:32000,y:32255,cmnt:Diffuse Color,varname:node_544,prsc:2|A-851-RGB,B-5927-RGB;n:type:ShaderForge.SFN_Slider,id:8940,x:32422,y:32806,ptovrint:False,ptlb:CellMultiply,ptin:_CellMultiply,varname:node_8940,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:9.350417,max:50;n:type:ShaderForge.SFN_Color,id:5297,x:33482,y:33252,ptovrint:False,ptlb:outlineColor,ptin:_outlineColor,varname:node_5297,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03676468,c2:0.008367134,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:3762,x:33419,y:33129,ptovrint:False,ptlb:outline,ptin:_outline,varname:node_3762,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.006027977,max:0.1;n:type:ShaderForge.SFN_Subtract,id:9633,x:32111,y:32597,varname:node_9633,prsc:2|A-7782-OUT,B-133-OUT;n:type:ShaderForge.SFN_Multiply,id:1170,x:32579,y:32616,varname:node_1170,prsc:2|A-4528-OUT,B-8940-OUT;n:type:ShaderForge.SFN_Slider,id:133,x:32073,y:32803,ptovrint:False,ptlb:CellSubstract,ptin:_CellSubstract,varname:node_133,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.408357,max:1;n:type:ShaderForge.SFN_Clamp01,id:4528,x:32300,y:32597,varname:node_4528,prsc:2|IN-9633-OUT;n:type:ShaderForge.SFN_Clamp01,id:5379,x:32780,y:32599,varname:node_5379,prsc:2|IN-1170-OUT;n:type:ShaderForge.SFN_Tex2d,id:4199,x:32146,y:31514,ptovrint:False,ptlb:WaterColor,ptin:_WaterColor,varname:node_4199,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9873e404d1d6ff94db69c9d491dd77d8,ntxv:0,isnm:False|UVIN-8862-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:8862,x:31926,y:31531,varname:node_8862,prsc:2,sctp:0;n:type:ShaderForge.SFN_Multiply,id:1294,x:32838,y:31879,varname:node_1294,prsc:2|A-4199-RGB,B-7757-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8654,x:33908,y:33456,ptovrint:False,ptlb:Foliage,ptin:_Foliage,varname:node_8654,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-3597-OUT,B-6205-OUT;n:type:ShaderForge.SFN_Vector1,id:3597,x:33716,y:33444,varname:node_3597,prsc:2,v1:0;n:type:ShaderForge.SFN_FragmentPosition,id:2197,x:32778,y:33535,varname:node_2197,prsc:2;n:type:ShaderForge.SFN_Distance,id:4161,x:33024,y:33597,varname:node_4161,prsc:2|A-2197-XYZ,B-5074-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:5074,x:32778,y:33690,varname:node_5074,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5339,x:33222,y:33641,varname:node_5339,prsc:2|A-4161-OUT,B-1527-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1527,x:33024,y:33754,ptovrint:False,ptlb:OffsetInt,ptin:_OffsetInt,varname:node_1527,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Sin,id:5276,x:32914,y:33921,varname:node_5276,prsc:2|IN-8082-OUT;n:type:ShaderForge.SFN_Time,id:794,x:32043,y:33915,varname:node_794,prsc:2;n:type:ShaderForge.SFN_Sin,id:9402,x:32914,y:34054,varname:node_9402,prsc:2|IN-7625-OUT;n:type:ShaderForge.SFN_Sin,id:1720,x:32914,y:34194,varname:node_1720,prsc:2|IN-1387-OUT;n:type:ShaderForge.SFN_Multiply,id:7625,x:32736,y:34054,varname:node_7625,prsc:2|A-8082-OUT,B-4653-OUT;n:type:ShaderForge.SFN_Multiply,id:1387,x:32736,y:34194,varname:node_1387,prsc:2|A-8082-OUT,B-8754-OUT;n:type:ShaderForge.SFN_Vector1,id:4653,x:32539,y:34141,varname:node_4653,prsc:2,v1:0.8;n:type:ShaderForge.SFN_Vector1,id:8754,x:32539,y:34240,varname:node_8754,prsc:2,v1:0.7;n:type:ShaderForge.SFN_Append,id:6803,x:33661,y:33939,varname:node_6803,prsc:2|A-5276-OUT,B-9402-OUT,C-1720-OUT;n:type:ShaderForge.SFN_Multiply,id:6205,x:33709,y:33666,varname:node_6205,prsc:2|A-5339-OUT,B-6803-OUT;n:type:ShaderForge.SFN_Multiply,id:4980,x:32262,y:33915,varname:node_4980,prsc:2|A-794-T,B-8933-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8933,x:32043,y:34071,ptovrint:False,ptlb:foliageSpeed,ptin:_foliageSpeed,varname:node_8933,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:100;n:type:ShaderForge.SFN_Color,id:8595,x:32343,y:31792,ptovrint:False,ptlb:WaterColorLight,ptin:_WaterColorLight,varname:node_8595,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4068966,c2:0,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:6960,x:32343,y:31974,ptovrint:False,ptlb:WaterColorDark,ptin:_WaterColorDark,varname:_WaterColorLight_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.08965516,c4:1;n:type:ShaderForge.SFN_Lerp,id:7757,x:32542,y:31890,varname:node_7757,prsc:2|A-8595-RGB,B-6960-RGB,T-7782-OUT;n:type:ShaderForge.SFN_Color,id:616,x:33231,y:32200,ptovrint:False,ptlb:Ambiant,ptin:_Ambiant,varname:node_616,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5367647,c2:0.5367647,c3:0.5367647,c4:1;n:type:ShaderForge.SFN_Lerp,id:9423,x:33739,y:32364,varname:node_9423,prsc:2|A-1996-OUT,B-3787-OUT,T-5379-OUT;n:type:ShaderForge.SFN_Vector1,id:3787,x:33391,y:32348,varname:node_3787,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1996,x:33464,y:32170,varname:node_1996,prsc:2|A-616-RGB,B-9746-OUT;n:type:ShaderForge.SFN_Multiply,id:2737,x:33011,y:32082,varname:node_2737,prsc:2|A-1294-OUT,B-5379-OUT;n:type:ShaderForge.SFN_Multiply,id:9746,x:33068,y:31900,varname:node_9746,prsc:2|A-1294-OUT,B-544-OUT;n:type:ShaderForge.SFN_Multiply,id:2785,x:33257,y:33779,varname:node_2785,prsc:2|A-5074-X,B-1998-OUT;n:type:ShaderForge.SFN_Vector1,id:1998,x:33057,y:33864,varname:node_1998,prsc:2,v1:5;n:type:ShaderForge.SFN_Add,id:8082,x:32467,y:33915,varname:node_8082,prsc:2|A-4980-OUT,B-2785-OUT;n:type:ShaderForge.SFN_Fresnel,id:1882,x:33813,y:32675,varname:node_1882,prsc:2|EXP-5754-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5754,x:33667,y:32687,ptovrint:False,ptlb:FresnelExp,ptin:_FresnelExp,varname:_FresnelNrm_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:1474,x:34737,y:32826,ptovrint:False,ptlb:UseFresnel,ptin:_UseFresnel,varname:node_1474,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9423-OUT,B-4060-OUT;n:type:ShaderForge.SFN_Add,id:4060,x:34447,y:32868,varname:node_4060,prsc:2|A-9423-OUT,B-4966-OUT;n:type:ShaderForge.SFN_Color,id:3926,x:33813,y:32868,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_3926,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7106,x:34005,y:32776,varname:node_7106,prsc:2|A-1882-OUT,B-3926-RGB;n:type:ShaderForge.SFN_Clamp01,id:4966,x:34212,y:32853,varname:node_4966,prsc:2|IN-7106-OUT;proporder:851-5927-8940-5297-3762-133-4199-8654-1527-8933-8595-6960-616-5754-1474-3926;pass:END;sub:END;*/

Shader "Shader Forge/cellShadeSimple" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        _CellMultiply ("CellMultiply", Range(0, 50)) = 9.350417
        _outlineColor ("outlineColor", Color) = (0.03676468,0.008367134,0,1)
        _outline ("outline", Range(0, 0.1)) = 0.006027977
        _CellSubstract ("CellSubstract", Range(0, 1)) = 0.408357
        _WaterColor ("WaterColor", 2D) = "white" {}
        [MaterialToggle] _Foliage ("Foliage", Float ) = 0
        _OffsetInt ("OffsetInt", Float ) = 0.1
        _foliageSpeed ("foliageSpeed", Float ) = 100
        _WaterColorLight ("WaterColorLight", Color) = (0.4068966,0,1,1)
        _WaterColorDark ("WaterColorDark", Color) = (0,1,0.08965516,1)
        _Ambiant ("Ambiant", Color) = (0.5367647,0.5367647,0.5367647,1)
        _FresnelExp ("FresnelExp", Float ) = 1
        [MaterialToggle] _UseFresnel ("UseFresnel", Float ) = 0
        _FresnelColor ("FresnelColor", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float4 _outlineColor;
            uniform float _outline;
            uniform fixed _Foliage;
            uniform float _OffsetInt;
            uniform float _foliageSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_794 = _Time + _TimeEditor;
                float node_8082 = ((node_794.g*_foliageSpeed)+(objPos.r*5.0));
                v.vertex.xyz += lerp( 0.0, ((distance(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb)*_OffsetInt)*float3(sin(node_8082),sin((node_8082*0.8)),sin((node_8082*0.7)))), _Foliage );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_outline,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                return fixed4(_outlineColor.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _CellMultiply;
            uniform float _CellSubstract;
            uniform sampler2D _WaterColor; uniform float4 _WaterColor_ST;
            uniform fixed _Foliage;
            uniform float _OffsetInt;
            uniform float _foliageSpeed;
            uniform float4 _WaterColorLight;
            uniform float4 _WaterColorDark;
            uniform float4 _Ambiant;
            uniform float _FresnelExp;
            uniform fixed _UseFresnel;
            uniform float4 _FresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_794 = _Time + _TimeEditor;
                float node_8082 = ((node_794.g*_foliageSpeed)+(objPos.r*5.0));
                v.vertex.xyz += lerp( 0.0, ((distance(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb)*_OffsetInt)*float3(sin(node_8082),sin((node_8082*0.8)),sin((node_8082*0.7)))), _Foliage );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float4 _WaterColor_var = tex2D(_WaterColor,TRANSFORM_TEX(i.screenPos.rg, _WaterColor));
                float node_7782 = max(0,dot(lightDirection,i.normalDir)); // Lambert
                float3 node_1294 = (_WaterColor_var.rgb*lerp(_WaterColorLight.rgb,_WaterColorDark.rgb,node_7782));
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_544 = (_Diffuse_var.rgb*_Color.rgb); // Diffuse Color
                float node_3787 = 0.0;
                float node_5379 = saturate((saturate((node_7782-_CellSubstract))*_CellMultiply));
                float3 node_9423 = lerp((_Ambiant.rgb*(node_1294*node_544)),float3(node_3787,node_3787,node_3787),node_5379);
                float3 emissive = lerp( node_9423, (node_9423+saturate((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExp)*_FresnelColor.rgb))), _UseFresnel );
                float3 finalColor = emissive + ((node_544*node_5379)*_LightColor0.rgb*attenuation*(node_1294*node_5379));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _CellMultiply;
            uniform float _CellSubstract;
            uniform sampler2D _WaterColor; uniform float4 _WaterColor_ST;
            uniform fixed _Foliage;
            uniform float _OffsetInt;
            uniform float _foliageSpeed;
            uniform float4 _WaterColorLight;
            uniform float4 _WaterColorDark;
            uniform float4 _Ambiant;
            uniform float _FresnelExp;
            uniform fixed _UseFresnel;
            uniform float4 _FresnelColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 screenPos : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_794 = _Time + _TimeEditor;
                float node_8082 = ((node_794.g*_foliageSpeed)+(objPos.r*5.0));
                v.vertex.xyz += lerp( 0.0, ((distance(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb)*_OffsetInt)*float3(sin(node_8082),sin((node_8082*0.8)),sin((node_8082*0.7)))), _Foliage );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_544 = (_Diffuse_var.rgb*_Color.rgb); // Diffuse Color
                float node_7782 = max(0,dot(lightDirection,i.normalDir)); // Lambert
                float node_5379 = saturate((saturate((node_7782-_CellSubstract))*_CellMultiply));
                float4 _WaterColor_var = tex2D(_WaterColor,TRANSFORM_TEX(i.screenPos.rg, _WaterColor));
                float3 node_1294 = (_WaterColor_var.rgb*lerp(_WaterColorLight.rgb,_WaterColorDark.rgb,node_7782));
                float3 finalColor = ((node_544*node_5379)*_LightColor0.rgb*attenuation*(node_1294*node_5379));
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform fixed _Foliage;
            uniform float _OffsetInt;
            uniform float _foliageSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_794 = _Time + _TimeEditor;
                float node_8082 = ((node_794.g*_foliageSpeed)+(objPos.r*5.0));
                v.vertex.xyz += lerp( 0.0, ((distance(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb)*_OffsetInt)*float3(sin(node_8082),sin((node_8082*0.8)),sin((node_8082*0.7)))), _Foliage );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
