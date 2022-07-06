//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 r_uv;
varying vec2 g_uv;
varying vec2 b_uv;

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	vec2 R = texture2D( gm_BaseTexture, r_uv ).ra;
	vec2 G = texture2D( gm_BaseTexture, g_uv ).ga;
	vec2 B = texture2D( gm_BaseTexture, b_uv ).ba;
	
	gl_FragColor = vec4(R.x,G.x,B.x,R.y + G.y + B.y);
}
