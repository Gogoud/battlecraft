float3 vec3(float x0)
{
    return float3(x0, x0, x0);
}
float3 vec3(float2 x0, float x1)
{
    return float3(x0, x1);
}
float4 vec4(float3 x0, float x1)
{
    return float4(x0, x1);
}
// Varyings
static float2 _coord = {0, 0};

static float4 gl_Color[1] =
{
    float4(0, 0, 0, 0)
};


uniform float _gm_AlphaRefValue : register(c3);
uniform bool _gm_AlphaTestEnabled : register(c4);
uniform sampler2D _gm_BaseTexture : register(s0);
uniform float4 _gm_FogColour : register(c5);
uniform bool _gm_PS_FogEnabled : register(c6);
uniform sampler2D _sNormalMap : register(s1);
uniform sampler2D _sReflection : register(s2);
uniform float3 _uLight : register(c7);
uniform float2 _uNormalsOffset : register(c8);
uniform float4 _uParams : register(c9);
uniform float2 _uRefractSize : register(c10);
uniform float2 _uScaleNormalMap : register(c11);
uniform float2 _uScaleReflection : register(c12);
uniform float4 _uUvNormalMap : register(c13);
uniform float4 _uUvReflection : register(c14);

float4 gl_texture2D(sampler2D s, float2 t)
{
    return tex2D(s, t);
}

#define GL_USES_FRAG_COLOR
;
;
;
;
;
void _DoAlphaTest(in float4 _SrcColour)
{
{
if(_gm_AlphaTestEnabled)
{
{
if((_SrcColour.w <= _gm_AlphaRefValue))
{
{
discard;
;
}
;
}
;
}
;
}
;
}
}
;
void _DoFog(inout float4 _SrcColour, in float _fogval)
{
{
if(_gm_PS_FogEnabled)
{
{
(_SrcColour = lerp(_SrcColour, _gm_FogColour, clamp(_fogval, 0.0, 1.0)));
}
;
}
;
}
}
;
;
;
;
;
;
;
;
;
;
;
;
void gl_main()
{
{
float2 _coordNormalMap = lerp(_uUvNormalMap.xy, _uUvNormalMap.zw, frac(((_coord + _uNormalsOffset) * _uScaleNormalMap)));
float3 _nrm = ((gl_texture2D(_sNormalMap, _coordNormalMap).xyz * float3(2.0, 2.0, 2.0)) - float3(1.0, 1.0, 1.0));
float3 _tmp = vec3(_nrm.xy, 0.0);
(_nrm.z = sqrt((1.0 - dot(_tmp, _tmp))));
float2 _refractedCoord = clamp((_coord + (_nrm.xy * _uRefractSize)), float2(0.0, 0.0), float2(1.0, 1.0));
float2 _refractedCoordReflection = lerp(_uUvReflection.xy, _uUvReflection.zw, frac((_coord + ((_nrm.xy * _uRefractSize) * _uScaleReflection))));
float4 _col = gl_texture2D(_gm_BaseTexture, _refractedCoord);
float4 _ref = gl_texture2D(_sReflection, _refractedCoordReflection);
float3 _source = lerp(_col.xyz, _ref.xyz, vec3(_uParams.x));
float3 _light = normalize(_uLight);
float _spc = pow(abs(dot(normalize((_light + float3(0.0, 0.0, 1.0))), _nrm)), _uParams.z);
(gl_Color[0] = vec4((_source + vec3((_spc * _uParams.y))), (_col.w * _uParams.w)));
}
}
;
struct PS_INPUT
{
    float2 v0 : TEXCOORD0;
};

struct PS_OUTPUT
{
    float4 gl_Color0 : COLOR0;
};

PS_OUTPUT main(PS_INPUT input)
{
    _coord = input.v0.xy;

    gl_main();

    PS_OUTPUT output;
    output.gl_Color0 = gl_Color[0];

    return output;
}
