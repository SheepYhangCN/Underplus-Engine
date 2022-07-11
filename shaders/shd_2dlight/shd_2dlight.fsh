//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec2 mainpos;
uniform float mainlev;

void main()
{
	vec4 col = texture2D( gm_BaseTexture, v_vTexcoord );
	vec2 pos = v_vPosition.xy;
	col.xyz += mainlev / length( vec2( pos.x - mainpos.x, pos.y - mainpos.y ) );
	col.x = min( 1.0, col.x );
	col.y = min( 1.0, col.y );
	col.z = min( 1.0, col.z );
	
    gl_FragColor = v_vColour * col;
}