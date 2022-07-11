//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec2 roomsize;//
uniform vec3 iMouse;//
uniform float Time;//时间变量
//gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );

#define iterations 17
#define formuparam 0.53

#define volsteps 20
#define stepsize 0.1

#define zoom   0.800
#define tile   0.850
#define speed  -0.0020 

#define brightness 0.002
#define darkmatter 0.400
#define distfading 0.730
#define saturation 0.650


void main()
{
	//get coords and direction
	vec2 uv = v_vTexcoord;
	vec3 dir=vec3(uv*zoom,1.);
	float time=Time*speed+.25;

	//mouse rotation
	
	float a1=.5+iMouse.x/roomsize.x*2.0 * iMouse.z;
	float a2=.8+iMouse.y/roomsize.y*2.0 * iMouse.z;
	mat2 rot1=mat2(cos(a1),sin(a1),-sin(a1),cos(a1));
	mat2 rot2=mat2(cos(a2),sin(a2),-sin(a2),cos(a2));
	dir.xz*=rot1;
	dir.xy*=rot2;
	vec3 from=vec3(1.,.5,0.5);
	from+=vec3(time*2.,time,-2.);
	from.xz*=rot1;
	from.xy*=rot2;
	
	//volumetric rendering
	float s=0.1,fade=1.;
	vec3 v=vec3(0.);
	for (int r=0; r<volsteps; r++) {
		vec3 p=from+s*dir*.5;
		p = abs(vec3(tile)-mod(p,vec3(tile*2.))); // tiling fold
		float pa,a=pa=0.;
		for (int i=0; i<iterations; i++) { 
			p=abs(p)/dot(p,p)-formuparam; // the magic formula
			a+=abs(length(p)-pa); // absolute sum of average change
			pa=length(p);
		}
		float dm=max(0.,darkmatter-a*a*.001); //dark matter
		a*=a*a; // add contrast
		if (r>6) fade*=1.-dm; // dark matter, don't render near
		//v+=vec3(dm,dm*.5,0.);
		v+=fade;
		v+=vec3(s,s*s,s*s*s*s)*a*brightness*fade; // 基于距离的着色 //coloring based on distance
		fade*=distfading; // 距离衰落 // distance fading
		s+=stepsize;
	}
	v=mix(vec3(length(v)),v,saturation); //color adjust
	gl_FragColor = vec4(v*.01,1.);	
	
}
