function Player_HurtKR() // gml_Script_Player_HurtKR
{
	if(global.kr=1){
	if(global.mode=0){Player_HurtKR_Normal()}
	if(global.mode=1){Player_HurtKR_Easy()}
	if(global.mode=2){Player_HurtKR_Hard()}
}
}
