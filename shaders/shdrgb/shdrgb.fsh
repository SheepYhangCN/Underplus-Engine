//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 strenth;
uniform vec2 dir;
uniform vec2 green;

void main()
{
	
	vec2 uv = v_vTexcoord;
	vec4 color = texture2D(gm_BaseTexture, uv);
	vec2 ofst = dir * strenth;
	color.r = texture2D(gm_BaseTexture, uv + ofst).r;
	color.g = texture2D(gm_BaseTexture, uv + green).g;
	color.b = texture2D(gm_BaseTexture, uv - ofst).b;
    gl_FragColor = v_vColour * color;
}
