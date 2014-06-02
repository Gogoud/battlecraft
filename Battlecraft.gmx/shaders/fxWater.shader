attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
varying vec2 coord;

void main()
{
    // send texture coord to fragment shader.
    coord = in_TextureCoord;
    
    // calculate screen-space position and send it to output.
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position, 1.0);
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform sampler2D sNormalMap;
uniform sampler2D sReflection;
uniform vec4 uUvNormalMap;
uniform vec4 uUvReflection;
uniform vec2 uNormalsOffset;
uniform vec2 uRefractSize;
uniform vec4 uParams; // x: reflection factor; y: specular; z: shine; w: water alpha.
uniform vec3 uLight;
uniform vec2 uScaleNormalMap;
uniform vec2 uScaleReflection;
varying vec2 coord;

void main()
{
    // eye is always aiming to +Z axis for 2D camera.
    const vec3 eye = vec3(0.0, 0.0, 1.0);
    
    // calculate normal map coord.
    vec2 coordNormalMap = mix(uUvNormalMap.xy, uUvNormalMap.zw, fract((coord + uNormalsOffset) * uScaleNormalMap));
    
    // sample texel from normal map texture and convert it to normal vector - this will be water surface direction.
    vec3 nrm = texture2D(sNormalMap, coordNormalMap).xyz * vec3(2.0) - vec3(1.0);
    
    // some normal map Z channel correction.
    vec3 tmp = vec3(nrm.xy, 0.0);
    nrm.z = sqrt(1.0 - dot(tmp, tmp));
    
    // calculate mask refracted coord.
    vec2 refractedCoord = clamp(coord + (nrm.xy * uRefractSize), vec2(0.0), vec2(1.0));
    
    // calculate reflection refracted coord.
    vec2 refractedCoordReflection = mix(uUvReflection.xy, uUvReflection.zw, fract((coord + (nrm.xy * uRefractSize) * uScaleReflection)));
    
    // sample texel from base texture - this will be water mask.
    vec4 col = texture2D(gm_BaseTexture, refractedCoord);
    
    // sample texel from reflection texture - this will be reflection of the sky.
    vec4 ref = texture2D(sReflection, refractedCoordReflection);
    
    // interpolate color with reflection by reflection factor.
    vec3 source = mix(col.xyz, ref.xyz, vec3(uParams.x));
    
    // normalize light direction
    vec3 light = normalize(uLight);
    
    // calculate light specular.
    float spc = pow(abs(dot(normalize(light + eye), nrm)), uParams.z);
    
    // mix color with attenuation, diffuse and specular - make a shadow.
    gl_FragColor = vec4(source + vec3(spc * uParams.y), col.w * uParams.w);
}

