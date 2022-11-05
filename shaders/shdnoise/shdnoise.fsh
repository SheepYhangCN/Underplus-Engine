//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float RandomNumber;

float random(vec2 randNum)
{
	return fract(sin(dot(randNum.x * 1.62835,randNum.y * 1.9943) + 0.54645) * 43758.5453);
}

void main()
{
	float argument = random(vec2(vec2(RandomNumber) + v_vTexcoord));
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	color.r += argument;
	color.g += argument;
	color.b += argument;
    gl_FragColor = v_vColour * color;
}
