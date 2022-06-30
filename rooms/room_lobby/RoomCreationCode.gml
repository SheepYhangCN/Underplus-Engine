BGM_Stop(0)
Dialog_Clear()
Flag_Load(FLAG_TYPE.SETTINGS)
//边框
border_=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)
if(border_=0){
Border_SetEnabled(false)}else{
Border_SetEnabled(true)
if(Border_GetSprite()!=Border_Get_Sprite(border_)){
Border_SetSprite(Border_Get_Sprite(border_))}}
if(global.language=0){
window_set_caption(GAME_NAME+" - Lobby")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 大厅")
}