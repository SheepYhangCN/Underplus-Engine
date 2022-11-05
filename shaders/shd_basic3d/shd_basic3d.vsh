attribute vec3 in_Position;
attribute vec4 in_Colour;
attribute vec2 in_TextureCoord;
varying vec4 v_vColour;
varying vec4 v_vPosition;
varying vec2 v_vTexture;

uniform vec4 mainTextureData;
uniform vec3 mainPosition;
uniform vec3 mainRot;
uniform vec3 mainAngle;
uniform vec3 mainScale;
uniform vec4 mainColor;
uniform vec2 mainInfor;

vec3 vecRot( vec3 getVec3, vec3 forceVec3, float Rot )
{
	return ( getVec3 * cos(Rot) + cross(getVec3, forceVec3) * sin(Rot) + forceVec3 * ( dot(forceVec3, getVec3) * ( 1.0 - cos(Rot) ) ));
}

vec3 PositionScale( vec3 pos, vec3 scale )
{
	return pos * mat3
	(
		vec3 ( scale.x,		0.0,		0.0 ),
		vec3 ( 0.0,			scale.y,	0.0 ),
		vec3 ( 0.0,			0.0,		scale.z )
	);
}

vec3 PositionXRot( vec3 pos, float ang )
{
	mat3 RotMatrix = mat3
	(
		1.0, 0.0,		0.0,
		0.0, cos(ang),	-sin(ang),
		0.0, sin(ang),	cos(ang) 
	);
	
	return pos * RotMatrix;
}

vec3 PositionYRot( vec3 pos, float ang )
{
	mat3 RotMatrix = mat3
	(
		cos(ang),	0.0, sin(ang),
		0.0,		1.0, 0.0,
		-sin(ang),	0.0, cos(ang)
	);
	
	return pos * RotMatrix;
}

vec3 PositionZRot( vec3 pos, float ang )
{
	mat3 RotMatrix = mat3
	(
		cos(ang),	-sin(ang),	0.0,
		sin(ang),	cos(ang),	0.0,
		0.0,		0.0,		1.0
	);
	
	return pos * RotMatrix;
}

vec2 RadiusToPositionVector2( float rad, float des )
{
	return vec2( cos(rad) * des, sin(rad) * des );
}

vec2 PositionToRadiusVector2( vec2 pos )
{
	return vec2( atan(pos.y, pos.x), length(pos) );
}

vec2 PositionToDirectionVector3(vec3 pos)
{
	return vec2( atan(pos.y, pos.x), atan(pos.z, length(pos.xy)));
}

void main()
{
	vec3 Now_getPosition = in_Position;
	vec3 setPosition = Now_getPosition;
	
	//拉伸处理
	setPosition = PositionScale(setPosition, mainScale);
	
	//旋转处理
	vec3 getAxisX = vec3( 1.0, 0.0, 0.0 );
	vec3 getAxisY = vec3( 0.0, 1.0, 0.0 );
	vec3 getAxisZ = vec3( 0.0, 0.0, 1.0 );
	
	setPosition = PositionXRot( setPosition, mainRot.x );
	getAxisX = PositionXRot( getAxisX, mainRot.x );
	getAxisY = PositionXRot( getAxisY, mainRot.x );
	getAxisZ = PositionXRot( getAxisZ, mainRot.x );

	setPosition = PositionXRot( setPosition, mainRot.y );
	getAxisX = PositionXRot( getAxisX, mainRot.y );
	getAxisY = PositionXRot( getAxisY, mainRot.y );
	getAxisZ = PositionXRot( getAxisZ, mainRot.y );
	
	setPosition = PositionXRot( setPosition, mainRot.z );
	getAxisX = PositionXRot( getAxisX, mainRot.z );
	getAxisY = PositionXRot( getAxisY, mainRot.z );
	getAxisZ = PositionXRot( getAxisZ, mainRot.z );

	setPosition = vecRot( setPosition, getAxisX, mainAngle.x);
	setPosition = vecRot( setPosition, getAxisY, mainAngle.y);
	setPosition = vecRot( setPosition, getAxisZ, mainAngle.z);
	
	if ( mainInfor.x == 1.0 )
	{
		float PositionLen = length(setPosition);
		vec2 PositionRadius = PositionToDirectionVector3(setPosition);
		vec3 PositionBall = vec3(
									mainScale.x * sin(PositionRadius.x) * cos(PositionRadius.y),
									mainScale.y * sin(PositionRadius.x) * sin(PositionRadius.y),
									mainScale.z * cos(PositionRadius.x)
								);
		float PositionBallLen = length(PositionBall);
		float PositionLerpLen = PositionLen + ( PositionBallLen - PositionLen ) * mainInfor.y;
		
		setPosition = normalize(setPosition) * PositionLerpLen;
	}
	//位移处理
	setPosition += mainPosition;
	
	//输出
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4( setPosition, 1.0);
    
	//传参
    v_vColour = mainColor * in_Colour;
	v_vPosition = vec4( setPosition, 1.0 );
	v_vTexture.x = mainTextureData.x + mainTextureData.z * in_TextureCoord.x;
	v_vTexture.y = mainTextureData.y + mainTextureData.w * in_TextureCoord.y;
}


