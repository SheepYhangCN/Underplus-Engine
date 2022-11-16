if(Input_IsPressed(INPUT.CONFIRM)){
	Dialog_Clear()
	Encounter_Start(BATTLE.WARMA)
}
/*if(Input_IsPressed(INPUT.MENU)){
	Dialog_Clear()
	room_goto(room_settings)
}*/

if(global.language=LANGUAGE.SCHINESE){
window_set_caption("温暖传说 - Warmtale")
}
if(global.language=LANGUAGE.ENGLISH){
window_set_caption("Warmtale")
}