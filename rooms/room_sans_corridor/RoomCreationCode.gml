if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Classic! Sans Fight Remake | Corridor")
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - 原版Sans战重制 | 长廊")}
audio_stop_all()
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())