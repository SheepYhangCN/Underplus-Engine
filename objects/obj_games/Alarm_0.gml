fader.alpha=0
temp=0
if(quit=1){
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,0);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,DIR.DOWN);
room_goto(room_lobby);
}else if(_shop=1){
_shop=0
//Shop_Start(0)
//show_message_async("Coming Soon")
if(global.language=0){CC_Add("Coming Soon")}
if(global.language=1){CC_Add("即将到来")}
room_restart()
}else{
switch choice{
	case -1://小游戏
		if(phase=0){//3分钟大风车
		Encounter_Start(12)}
	break
	case 0://教程
		Encounter_Start(1)
	break
	case 1://雪镇杉
		if(phase=0){
		room_goto(room_utse)}
		if(phase=1){
		Encounter_Start(4)}
		if(phase=2){
		Encounter_Start(5)}
		break
	case 2://阿尼亚
		if(phase=0){
		Encounter_Start(7)}
		if(phase=1){
		room_goto(room_anya_dt2)}
		break
	case 3://原杉
		if(phase=0){
		room_goto(room_sans_corridor)}
		if(phase=1){
		Encounter_Start(9)}
		break
	case 4://utc杉
		room_goto(room_logo_utc)
	break
	case 5://starry杉
		Encounter_Start(11)
	break
	case 6://海绵宝宝
		Encounter_Start(13)
	break
}
}
