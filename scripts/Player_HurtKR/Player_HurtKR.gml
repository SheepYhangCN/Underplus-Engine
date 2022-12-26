function Player_HurtKR() // gml_Script_Player_HurtKR
{
	//if(global.kr=1){
	if(global.mode=GAME_MODE.NORMAL){Player_HurtKR_Normal()}
	if(global.mode=GAME_MODE.EASY){Player_HurtKR_Easy()}
	if(global.mode=GAME_MODE.HARD){Player_HurtKR_Hard()}
//}
}
