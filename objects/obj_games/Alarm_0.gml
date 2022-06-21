fader.alpha=0
temp=0
if(quit=1){
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,0);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,DIR.DOWN);
room_goto(room_lobby);
}else if(_shop=1){
_shop=0
//Shop_Start(0)
show_message_async("Coming Soon")
room_restart()
}else{
switch choice{
	case 0:
	Encounter_Start(1)
	break
	case 1:
		if(phase=0){
		room_goto(room_utse)}
		if(phase=1){
		Encounter_Start(4)}
		if(phase=2){
		Encounter_Start(5)}
		break
}
}
