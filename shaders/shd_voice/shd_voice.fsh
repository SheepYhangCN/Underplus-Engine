uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
#define BEATMOVE 1

const float FREQ_RANGE = 128.0;
const float PI = 3.1415;
const float RADIUS = 0.5;
const float BRIGHTNESS = 0.2;
const float SPEED = 0.5;

vec3 hsv2rgb(vec3 color){
    vec4 konvert = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 calc = abs(fract(color.xxx + konvert.xyz) * 6.0 - konvert.www);
    return color.z * mix(konvert.xxx, clamp(calc - konvert.xxx, 0.0, 1.0), color.y);
}

float luma(vec3 color) {
  return dot(color, vec3(0.299, 0.587, 0.5));
}

float getFrequency(float x) {
	return texture2D(gm_BaseTexture, vec2(floor(x * FREQ_RANGE + .0) / FREQ_RANGE, 0.25)).x + 0.06;
}

float getFrequency_smooth(float x) {
	float index = floor(x * FREQ_RANGE) / FREQ_RANGE;
    float next = floor(x * FREQ_RANGE + 1.0) / FREQ_RANGE;
	return mix(getFrequency(index), getFrequency(next), smoothstep(0.0, 1.0, fract(x * FREQ_RANGE)));
}

float getFrequency_blend(float x) {
    return mix(getFrequency(x), getFrequency_smooth(x), 0.5);
}

vec3 circleIllumination(vec2 fragment, float radius) {
	float distance = length(fragment);
	float ring = 1.0 / abs(distance - radius - (getFrequency_smooth(0.0)/4.50));
	
	vec3 color = vec3(0.0);
	
	float angle = atan(fragment.x, fragment.y);
	color += hsv2rgb( vec3( ( angle + iGlobalTime * 2.5 ) / (PI * 2.0), 1.0, 1.0 ) ) * ring * BRIGHTNESS;
	
	float frequency = max(getFrequency_blend(abs(angle / PI)) - 0.02, 0.0);
	color *= frequency;
	
	return color;
}

vec3 doLine(vec2 fragment, float radius, float x) {
	vec3 col = hsv2rgb(vec3(x * 0.23 + iGlobalTime * 0.12, 1.0, 1.0));
	
	float freq = abs(fragment.x * 0.5);
	
	col *= (1.0 / abs(fragment.y)) * BRIGHTNESS * getFrequency(freq);	
	col = col * smoothstep(radius, radius * 1.8, abs(fragment.x));
	
	return col;
}

void main()
{
    
    vec2 fragPos = fragCoord / iResolution.xy;
	fragPos = (fragPos - 0.5) * 2.0;
    fragPos.x *= iResolution.x / iResolution.y;
    
    vec3 color = vec3(0.0,0.0,0.0);
	color += circleIllumination(fragPos, RADIUS);
    
    float c = cos(iGlobalTime * SPEED);
    float s = sin(iGlobalTime * SPEED);
    vec2 rot = mat2(c,s,-s,c) * fragPos;
    color += doLine(rot, (RADIUS ), rot.x);
    
    float c1 = sin(iGlobalTime * SPEED);
    float s1 = cos(iGlobalTime * SPEED);
    vec2 rot1 = mat2(c1,s1,-s1,c1) * fragPos;
    color += doLine(rot1, (RADIUS ), rot1.y);
    
    color += max(luma(color) - 1.0, 0.0);
    
    gl_FragColor = vec4(color, 1.0);
}