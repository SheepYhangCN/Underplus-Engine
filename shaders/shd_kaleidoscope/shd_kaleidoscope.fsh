uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 
const float PI = 3.141592658;
const float TAU = PI * 2.0;
uniform float SIDES;
uniform float also_angle;
uniform float a_angle;
uniform float also_length;

void main(){
  vec2 pos = vec2(fragCoord.xy - 0.5 * iResolution.xy) / iResolution.y;

  float rad = length(pos);
  float angle = atan(pos.y, pos.x);

  float ma = mod(angle+also_angle, TAU/SIDES)+a_angle;
  ma = abs(ma - PI/SIDES);
  
  float x = cos(ma) * rad;
  float y = sin(ma) * rad;
  
  gl_FragColor = texture2D(gm_BaseTexture, vec2(x+0.5, y+also_length));
}

float Tile1D(float p, float a){
  p -= 4.0 * a * floor(p/4.0 * a);
  p -= 2.* max(p - 2.0 * a , 0.0);
  return p;
}