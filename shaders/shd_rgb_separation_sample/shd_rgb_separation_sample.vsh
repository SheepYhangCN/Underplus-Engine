//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec4 r_transform;
uniform vec4 g_transform;
uniform vec4 b_transform;

varying vec2 r_pos;
varying vec2 g_pos;
varying vec2 b_pos;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x , in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
	
	r_pos = in_TextureCoord.xy - r_transform.xy * vec2(1.0/640.0,1.0/480.0);
	g_pos = in_TextureCoord.xy - g_transform.xy * vec2(1.0/640.0,1.0/480.0);
	b_pos = in_TextureCoord.xy - b_transform.xy * vec2(1.0/640.0,1.0/480.0);
}
