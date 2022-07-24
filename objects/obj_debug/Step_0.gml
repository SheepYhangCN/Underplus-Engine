if(keyboard_check_pressed(vk_insert)){
	if(global.debug = 0){
		global.debug = 1;
	}else if(global.debug = 1){
		global.debug = 0;
	}
}

if(global.debug = 1){
	show_debug_overlay(true);
	if(!instance_exists(obj_console)){
	instance_create_depth(0,0,0,obj_console)}
	if(keyboard_check_pressed(vk_end)){
	with(block){
	if(object_index=block||object_index=block_corner){
	visible=!visible}}
	with(trigger){
	visible=!visible}
	with(hint_landmark){
	visible=!visible}
	}
	if(keyboard_check_pressed(vk_f12)){
	if(global.mode = 0){
		global.mode = 1;
	}else if(global.mode = 1){
		global.mode = 2;
	}else if(global.mode = 2){
		global.mode = 0
	}
		Player_SetHp(Player_GetHpMax())
		room_restart()
}
	if(keyboard_check_pressed(vk_f5)){
	if(global.language=0){
	Language_Set(1)
	}else if(global.language=1){
	Language_Set(0)
	}
}
if(keyboard_check_pressed(vk_tab)){
	if(world._window_size=1){
	//window_set_size(960,720)
	//world._window_size=1.5
	Window_Size_Set(1.5)
	}else if(world._window_size=1.5){
	//window_set_size(1280,960)
	//world._window_size=2
	Window_Size_Set(2)
	}else if(world._window_size=2){
	//window_set_size(640,480)
	//world._window_size=1
	Window_Size_Set(1)
	}
}
	if(global.shieldval<=0){
	global.shieldval=120}
	if(mouse_check_button_pressed(mb_middle)){
	camera.angle=0
	}
	if(mouse_check_button_pressed(mb_side1)){
	room_goto_previous()
	}
	if(mouse_check_button_pressed(mb_side2)){
	room_goto_next()
	}
	if(keyboard_check_pressed(vk_lcontrol)){
		Player_SetLv(Player_GetLv()-1)
		Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
	}
	if(keyboard_check_pressed(vk_rcontrol)){
		Player_SetLv(Player_GetLv()+1)
		Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
	}
	if(keyboard_check_direct(vk_lalt)){
		camera.angle+=1
	}
	if(keyboard_check_direct(vk_ralt)){
		camera.angle-=1
	}
	if(keyboard_check_pressed(vk_f3)){
		goto_room=get_string("room_goto", room_get_name(room))
		if(room_exists(asset_get_index(goto_room))){
		room_goto(asset_get_index(goto_room))}
	}
	if(keyboard_check_pressed(vk_pageup)){
		shop_start=get_integer("Shop_Start", global.shop)
		Shop_Start(shop_start)
	}
	if(keyboard_check_pressed(vk_pagedown)){
		encounter_battle=get_integer("Encounter_Start", global.enemy)
		Encounter_Start(encounter_battle)
}
	if(keyboard_check_pressed(ord("S"))&&!instance_exists(battle_soul_blue)&&!instance_exists(battle_soul_blue_aqua)&&!instance_exists(battle_soul_green)&&!instance_exists(battle_soul_green_aqua)){
		instance_create_depth(0,0,0,ui_save)
	}
	if(keyboard_check_pressed(ord("F"))){
		save_slot=get_integer("Flag_SetSaveSlot", Flag_GetSaveSlot())
		Flag_SetSaveSlot(save_slot)
	}
	if(keyboard_check_pressed(ord("L"))){
		Player_Load(Flag_GetSaveSlot());
		var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,room_init);
		room_goto(asset_get_index(target))
	}
if(keyboard_check_pressed(vk_escape)){
		show_message("Game Paused")}
if(Player_IsInBattle()){
	if(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua)){
	if(keyboard_check_pressed(ord("W"))){
		if(instance_exists(titr_body)){
		Titr_BlueSoulControl(DIR.UP)
		}else if(instance_exists(anya_body)){
		BlueSoulControl_Anya(DIR.UP)
		}else{
		BlueSoulControl(DIR.UP)}
	}
	if(keyboard_check_pressed(ord("A"))){
		if(instance_exists(titr_body)){
		Titr_BlueSoulControl(DIR.LEFT)
		}else if(instance_exists(anya_body)){
		BlueSoulControl_Anya(DIR.LEFT)
		}else{
		BlueSoulControl(DIR.LEFT)}
	}
	if(keyboard_check_pressed(ord("S"))){
		if(instance_exists(titr_body)){
		Titr_BlueSoulControl(DIR.DOWN)
		}else if(instance_exists(anya_body)){
		BlueSoulControl_Anya(DIR.DOWN)
		}else{
		BlueSoulControl(DIR.DOWN)}
	}
	if(keyboard_check_pressed(ord("D"))){
		if(instance_exists(titr_body)){
		Titr_BlueSoulControl(DIR.RIGHT)
		}else if(instance_exists(anya_body)){
		BlueSoulControl_Anya(DIR.RIGHT)
		}else{
		BlueSoulControl(DIR.RIGHT)}
	}}
	if(keyboard_check_pressed(vk_delete)){
		warp_battle_turn=get_integer("Battle_SetTurnNumber", Battle_GetTurnNumber())
		Battle_SetTurnNumber(warp_battle_turn)
	}
	if(keyboard_check_pressed(vk_numpad0)){
	Battle_SetSoul(battle_soul_red)
	}
	if(keyboard_check_pressed(vk_numpad1)){
	Battle_SetSoul(battle_soul_blue)
	}
	if(keyboard_check_pressed(vk_numpad2)){
	Battle_SetSoul(battle_soul_aqua)
	}
	if(keyboard_check_pressed(vk_numpad3)){
	Battle_SetSoul(battle_soul_orange)
	}
	if(keyboard_check_pressed(vk_numpad4)){
	Battle_SetSoul(battle_soul_yellow)
	}
	if(keyboard_check_pressed(vk_numpad5)){
	Battle_SetSoul(battle_soul_green)
	}
	if(keyboard_check(vk_numpad1)&&keyboard_check_pressed(vk_numpad2)){
	Battle_SetSoul(battle_soul_blue_aqua)
	}
	if(keyboard_check(vk_numpad2)&&keyboard_check_pressed(vk_numpad3)){
	Battle_SetSoul(battle_soul_aqua_orange)
	}
	if(keyboard_check(vk_numpad4)&&keyboard_check_pressed(vk_numpad3)){
	Battle_SetSoul(battle_soul_yellow_orange)
	}
	if(keyboard_check(vk_numpad4)&&keyboard_check_pressed(vk_numpad2)){
	Battle_SetSoul(battle_soul_yellow_aqua)
	}
	if(keyboard_check(vk_numpad4)&&keyboard_check(vk_numpad2)&&keyboard_check(vk_numpad3)){
	Battle_SetSoul(battle_soul_yellow_aqua_orange)
	}
	if(keyboard_check(vk_numpad5)&&keyboard_check_pressed(vk_numpad2)){
	Battle_SetSoul(battle_soul_green_aqua)
	}
	if(keyboard_check_pressed(vk_f6)){
		Battle_EndTurn()}
	if(keyboard_check_pressed(vk_f7)){
		turn_time=get_integer("Battle_SetTurnTime", Battle_GetTurnTime())
		Battle_SetTurnTime(turn_time)}
	if(keyboard_check_pressed(vk_f8)&&instance_exists(battle_turn)){
		turn_timer=get_integer("timer=", battle_turn.timer)
		battle_turn.timer=turn_timer}
	}
	
	if(keyboard_check_direct(vk_add)){
		Player_Heal(1);
		//audio_play_sound(snd_item_heal,0,0);
		
	}else if(keyboard_check_direct(vk_subtract)){
		Player_Hurt(1);
		//audio_play_sound(snd_hurt,0,0);
	}
	if(keyboard_check_pressed(vk_home)){
		if(global.undead = 0){
				global.undead = 1;
			}else if(global.undead = 1){
				global.undead = 0;}}
				
	if(keyboard_check_pressed(vk_f9)){
		audio_stop_all()
	}
}else if(global.debug = 0){
		show_debug_overlay(false);
		global.undead = 0
		if(instance_exists(obj_console)){
		instance_destroy(obj_console)}
		with(block){
		if(object_index=block||object_index=block_corner){
		visible=false}}
		with(trigger){
		visible=false}
		with(hint_landmark){
		visible=false}
}
if(global.undead = 1&&Player_GetHp()<=0){
		Player_SetHp(0)
		Player_SetKR(0)
}
