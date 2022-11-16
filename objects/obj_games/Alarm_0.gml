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
if(global.language=LANGUAGE.ENGLISH){CC_Add("Coming Soon")}
if(global.language=LANGUAGE.SCHINESE){CC_Add("即将到来")}
room_restart()
}else{
switch choice{
	case -1://小游戏
		if(phase=0){//3分钟大风车
		Encounter_Start(BATTLE.THREE_MINUTE_GB)}
	break
	//case 0://教程
		//Encounter_Start(BATTLE.TUTORIAL)
	//break
	case 0://雪镇杉
		if(phase=0){
		room_goto(room_utse)}
		if(phase=1){
		Encounter_Start(BATTLE.UTSE_SANS)}
		if(phase=2){
		Encounter_Start(BATTLE.UTSE_SANS_P2)}
		break
	case 1://阿尼亚
		if(phase=0){
		Encounter_Start(BATTLE.ANYA)}
		if(phase=1){
		room_goto(room_anya_dt2)}
		break
	case 2://原杉
		if(phase=0){
		room_goto(room_sans_corridor)}
		if(phase=1){
		Encounter_Start(BATTLE.SANS_REMAKE)}
		break
	case 3://utc杉
		room_goto(room_logo_utc)
	break
	case 4://starry杉
		Encounter_Start(BATTLE.STARRY_SANS)
	break
	case 5://海绵宝宝
		Item_Set(0,item_sponge_krabby_patty)
		Item_Set(1,item_sponge_triple_gooberberry_sunrise)
		Item_Set(2,item_sponge_bubble)
		Item_Set(3,item_sponge_bubble)
		Item_Set(4,item_sponge_bubble)
		Item_Set(5,item_sponge_bubble)
		Item_Set(6,(global.mode=GAME_MODE.HARD ? item_sponge_bubble : item_sponge_bubble_water))
		Item_Set(7,item_sponge_chumstick)
		Encounter_Start(13+phase)
	break
	case 6://shift杉王
		//Encounter_Start(BATTLE.SHIFT_SANS)
		room_goto(room_shift_sans_intro)
	break
	case 7://沃玛
		room_goto(room_logo_warmtale)
	break
}
}
