varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 fragCoord;

uniform vec3  iResolution;
uniform float TIME ;
uniform float SITY ;


float hash( in vec2 p ) 
{
    return fract(sin(p.x*15.32+p.y*35.78) * 43758.23);
}

vec2 hash2(vec2 p)
{
	return vec2(hash(p*.754),hash(1.5743*p.yx+4.5891))-SITY;
}


vec2 add = vec2(1.0, 0.0);

vec2 noise2(vec2 x)
{
    vec2 p = floor(x);
    vec2 f = fract(x);
    f = f*f*(3.0-2.0*f);
    
    vec2 res = mix(mix( hash2(p),          hash2(p + add.xy),f.x),
                    mix( hash2(p + add.yx), hash2(p + add.xx),f.x),f.y);
    return res;
}

vec2 noise2b( in vec2 p )
{
    const float K1 = 0.366025404; 
    const float K2 = 0.211324865; 
	p /=2.;
	vec2 i = floor( p + (p.x+p.y)*K1 );
	
    vec2 a = p - i + (i.x+i.y)*K2;
    vec2 o = (a.x>a.y) ? vec2(1.0,0.0) : vec2(0.0,1.0);
    vec2 b = a - o + K2;
	vec2 c = a - 1.0 + 2.0*K2;

    vec3 h = max( 0.5-vec3(dot(a,a), dot(b,b), dot(c,c) ), 0.0 );

	vec3 nx = h*h*h*h*vec3( dot(a,hash2(i+0.0)), dot(b,hash2(i+o)), dot(c,hash2(i+1.0)));
    vec3 ny = h*h*h*h*vec3( dot(a,hash2(i+4.5)), dot(b,hash2(i+o+4.5)), dot(c,hash2(i+1.0+4.5)));

    return vec2(dot( nx, vec3(70.0) ),dot( ny, vec3(70.0) ));
	
}


mat2 m2;

vec2 fbm2(vec2 x)
{
    vec2 r = vec2(0.0);
    float a = 1.;
    
    for (int i = 0; i < 6; i++)
    {
        r += m2*noise2b(x+r)*a; 
        x +=.3*r+.4;
    }     
    return r;
}


vec2 water(vec2 x)
{
    x=fbm2(x);
    x=abs(x)/dot(x,x)-1.;
    return abs(x)/dot(x,x)-1.;
}

void main()
{
	float iTime =  TIME;
	vec2 resolution = iResolution.xy;
	
	vec2 uv = fragCoord.xy / (1.2*iResolution.yy);
    uv*=10.;
    float t = 1.1*iTime;
    float st = sin(t), ct = cos(t);
    m2 = mat2(ct,st,-st,ct);
    vec2 p = water(uv+2.*iTime);
    float c = length(p)/7.;
    c=clamp(pow(c,3.),0.,1.);
    vec3 col=texture2D(gm_BaseTexture,uv/20.+p/45.).rgb;    
    col=mix(col,vec3(.7,.7,.9),c);
	gl_FragColor = vec4(col,1.0);
	
    
}
