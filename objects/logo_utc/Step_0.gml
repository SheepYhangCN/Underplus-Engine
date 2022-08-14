if(Input_IsPressed(INPUT.CONFIRM)){
	Dialog_Clear()
	Encounter_Start(10)
}
if(keyboard_check_pressed(ord("X"))){
	Dialog_Clear()
	room_goto(room_utcsans_end)
}
if(keyboard_check_pressed(ord("C"))){
	Dialog_Clear()
	room_goto(room_settings)
}

window_set_caption("Undertale: Candid")