BGM_Stop(0)
Dialog_Clear()
if(Border_GetSprite()=spr_border_snowdin){
Border_SetEnabled(false)}
if(global.language=0){
window_set_caption(GAME_NAME+" - Lobby")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 大厅")
}