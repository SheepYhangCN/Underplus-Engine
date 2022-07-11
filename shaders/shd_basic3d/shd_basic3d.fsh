//
// Simple passthrough fragment shader
//
varying vec4 v_vColour;
varying vec4 v_vPosition;
varying vec2 v_vTexture;
//uniform sampler2D mainTexture;

void main()
{
	//vec2 gettextpos = vec2( v_vPosition.x / 640.0, v_vPosition.y / 480.0 );
	vec4 gettexture = texture2D( gm_BaseTexture, v_vTexture );
	
    gl_FragColor = v_vColour * gettexture;
}
