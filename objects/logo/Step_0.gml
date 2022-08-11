if(Input_IsPressed(INPUT.CONFIRM)){
	Dialog_Clear()
	room_goto(room_warning)
}

if(global.language=0){
window_set_caption(GAME_NAME+" - Logo")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 标题画面")
}