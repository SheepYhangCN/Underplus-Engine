if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Undertale: the Core Encounter Sans Fight")
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - Undertale: 核心之遇 Sans战")}
audio_stop_all()
Player_SetLv(13)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())