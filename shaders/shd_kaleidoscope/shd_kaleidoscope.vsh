attribute vec3 in_Position; 
varying vec2 fragCoord; 
 void main() 
 {
    vec4 Position = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
   gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * Position; 
   fragCoord = in_Position.xy;
 }