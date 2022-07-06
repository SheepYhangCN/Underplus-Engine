//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec2 r_pos;
varying vec2 g_pos;
varying vec2 b_pos;

void main()
{
	vec2 R = texture2D( gm_BaseTexture, r_pos ).ra;
	vec2 G = texture2D( gm_BaseTexture, g_pos ).ga;
	vec2 B = texture2D( gm_BaseTexture, b_pos ).ba;
    gl_FragColor = vec4(R.x,G.x,B.x,R.y+G.y+B.y);
	//gl_FragColor = vec4(1.0-texture2D( gm_BaseTexture, v_vTexcoord ).r,1.0-texture2D( gm_BaseTexture, v_vTexcoord ).g,1.0-texture2D( gm_BaseTexture, v_vTexcoord ).b,texture2D( gm_BaseTexture, v_vTexcoord ).a);
}
