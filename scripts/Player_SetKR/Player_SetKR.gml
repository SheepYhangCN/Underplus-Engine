function Player_SetKR()// gml_Script_Player_SetKR
{
    var KR = argument[0]
	var result = Flag_Set(FLAG_TYPE.STATIC, FLAG_STATIC.KR,KR);
	return result;
}