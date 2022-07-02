///@desc Menu Switch
if(_menu==0){
	//_mode=file_exists(Flag_GetSavePath(FLAG_TYPE.INFO,0));
	_mode=directory_exists("./"+GAME_SAVE_NAME+"./flag")
	if(_mode==0){
		//_inst_instruction.text=_prefix+"{color_text `gray_light`} --- New Keys ---{space_y -1}&{space_y 2}[F2] - Restart Room&[F3] - Restart&[F4] - Fullscreen&[ESC] - Quit Game&& --- DEBUG Mode Keys ---{space_y -1}&{space_y 2}[Insert] - DEBUG Mode&[Home] - Lock/Unlock HP&[~] - Console";
		_inst_begin=instance_create_depth(170,315,0,text_typer);
		//_inst_begin.text=_prefix+"Press Z or Enter to Begin";
		_inst_settings=instance_create_depth(170,350,0,text_typer);
		_inst_credits=instance_create_depth(170,385,0,text_typer)
		if(global.language=0){
		_inst_instruction=instance_create_depth(120,0,0,text_typer);
		_inst_instruction.text=_prefix+"{color_text `gray_light`}{font 1} --- Keys ---{space_y -1}&{space_y 2}[F1] - Restart&[F2] - Restart Room&[F4] - Fullscreen&[X/Shift] - Run(Overworld)&[X/Shift] - Slow(In Battle)&[Insert] - DEBUG MODE&Tap the back button(backspace) to&switch the mobile controller."
		_inst_begin.text=_prefix+"{font 0}Begin Game"
		_inst_settings.text=_prefix+"{font 0}Settings"
		_inst_credits.text=_prefix+"{font 0}Credits"
		}else if(global.language=1){
		_inst_instruction=instance_create_depth(150,0,0,text_typer);
		_inst_instruction.text=_prefix+"{font 1}{color_text `gray_light`} --- 按键 ---{space_y -1}&{space_y 2}[F1] - 重启&[F2] - 重启房间&[F4] - 全屏&[X/Shift] - 奔跑(主世界)&[X/Shift] - 减速(战斗中)&[Insert] - 调试模式&按下返回键(退格)来开关&移动端控制器"
		_inst_begin.text=_prefix+"{font 3}开始游戏"
		_inst_settings.text=_prefix+"{font 3}设置"
		_inst_credits.text=_prefix+"{font 3}制作名单"
		}
		with(text_typer){
			event_user(15);
		}
		event_user(2);
	}else{
		Flag_Load(FLAG_TYPE.INFO);
		_inst_name=instance_create_depth(140,124,0,text_typer);
		_inst_lv=instance_create_depth(308,124,0,text_typer);
		_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
		_inst_time=instance_create_depth(452,124,0,text_typer);
		var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
		var minute=time div 60;
		var second=time mod 60;
		_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
		_inst_room=instance_create_depth(140,160,0,text_typer);
		_inst_room.text=_prefix+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM));
		_inst_continue=instance_create_depth(170,210,0,text_typer);
		_inst_continue.override_color_text_enabled=true;
		_inst_reset=instance_create_depth(390,210,0,text_typer);
		_inst_reset.override_color_text_enabled=true;
		_inst_settings=instance_create_depth(170,250,0,text_typer);
		_inst_settings.override_color_text_enabled=true;
		_inst_credits=instance_create_depth(390,250,0,text_typer);
		_inst_credits.override_color_text_enabled=true;
		if(global.language=0){
		_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 0}EMPTY");
		_inst_continue.text=_prefix
		if(!file_exists(Flag_GetSavePath(FLAG_TYPE.INFO))){
		_inst_continue.text+="{color `gray`}"}
		_inst_continue.text+="{font 0}Continue"
		_inst_reset.text=_prefix+"{font 0}Rename"
		_inst_settings.text=_prefix+"{font 0}Settings"
		_inst_credits.text=_prefix+"{font 0}Credits"
		}else if(global.language=1){
		_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 3}空");
		_inst_continue.text=_prefix
		if(!file_exists(Flag_GetSavePath(FLAG_TYPE.INFO))){
		_inst_continue.text+="{color `gray`}"}
		_inst_continue.text+="{font 3}继续"
		_inst_reset.text=_prefix+"{font 3}改名"
		_inst_settings.text=_prefix+"{font 3}设置"
		_inst_credits.text=_prefix+"{font 3}制作名单"
		}
		event_user(2);
		
	}
}else{
	if(instance_exists(_inst_instruction)){
		instance_destroy(_inst_instruction);
	}
	if(instance_exists(_inst_begin)){
		instance_destroy(_inst_begin);
	}
	if(instance_exists(_inst_settings)){
		instance_destroy(_inst_settings);
	}
	if(instance_exists(_inst_name)){
		instance_destroy(_inst_name);
	}
	if(instance_exists(_inst_lv)){
		instance_destroy(_inst_lv);
	}
	if(instance_exists(_inst_time)){
		instance_destroy(_inst_time);
	}
	if(instance_exists(_inst_room)){
		instance_destroy(_inst_room);
	}
	if(instance_exists(_inst_continue)){
		instance_destroy(_inst_continue);
	}
	if(instance_exists(_inst_reset)){
		instance_destroy(_inst_reset);
	}
	if(instance_exists(_inst_credits)){
		instance_destroy(_inst_credits);
	}
}

if(_menu==1){
	_inst_naming_title=instance_create_depth(180,35,0,text_typer);
	_inst_naming_letters=instance_create_depth(120,107,0,text_typer);
	_inst_naming_letters.text=_prefix+"{font 0}{effect 0}{space_x 24}{space_y -2}ABCDEFG&HIJKLMN&OPQRSTU&VWXYZ{space_y -7}&&{space_y -2}abcdefg&hijklmn&opqrstu&vwxyz{space_y -7}&&{space_y -2}1234567&890";
	_inst_naming_quit=instance_create_depth(120,410,0,text_typer);
	_inst_naming_backspace=instance_create_depth(240,410,0,text_typer);
	_inst_naming_done=instance_create_depth(440,410,0,text_typer);
	if(global.language=0){
	_inst_naming_title.text=_prefix+"{font 1}Please input your name."
	_inst_naming_quit.text=_prefix+"Quit"
	_inst_naming_backspace.text=_prefix+"Backspace"
	_inst_naming_done.text=_prefix+"Done"
	//_inst_naming.text=_prefix+"{font 1}Press Enter to Done&Press Backspace to Backspace&Press Esc to Quit"
	}else if(global.language=1){
	_inst_naming_title.text=_prefix+"{font 3}请输入你的名字。"
	_inst_naming_quit.text=_prefix+"{font 3}退出"
	_inst_naming_backspace.text=_prefix+"{font 3}退格"
	_inst_naming_done.text=_prefix+"{font 3}完成"
	//_inst_naming.text=_prefix+"{font 3}按下 回车 完成&按下 退格键 退格&按下 {font 1}Esc{font 3} 退出"
	}
	with(text_typer){
		event_user(15);
	}
	event_user(3);
	//room_goto(room_area_0);
}else{
	if(instance_exists(_inst_naming_title)){
		instance_destroy(_inst_naming_title);
	}
	if(instance_exists(_inst_naming_letters)){
		instance_destroy(_inst_naming_letters);
	}
	if(instance_exists(_inst_naming_quit)){
		instance_destroy(_inst_naming_quit);
	}
	if(instance_exists(_inst_naming_backspace)){
		instance_destroy(_inst_naming_backspace);
	}
	if(instance_exists(_inst_naming_done)){
		instance_destroy(_inst_naming_done);
	}
	//if(instance_exists(_inst_naming)){
		//instance_destroy(_inst_naming);
	//}
}

if(_menu==2){
	_inst_confirm_title=instance_create_depth(180,60,0,text_typer);
	_inst_confirm_title.text=_prefix+_confirm_title;
	_inst_confirm_no=instance_create_depth(146,400,0,text_typer);
	_inst_confirm_yes=instance_create_depth(460,400,0,text_typer);
	if(global.language=0){
	_inst_confirm_no.text=_prefix+"{font 1}No"
	_inst_confirm_yes.text=_prefix+"{font 1}Yes"
	}else if(global.language=1){
	_inst_confirm_no.text=_prefix+"{font 3}否"
	_inst_confirm_yes.text=_prefix+"{font 3}是"
	}
	_confirm_name_x=280;
	_confirm_name_y=72;
	_confirm_name_scale=2;
	Anim_Destroy(self,"_confirm_name_x");
	Anim_Destroy(self,"_confirm_name_y");
	Anim_Destroy(self,"_confirm_name_scale");
	Anim_Create(self,"_confirm_name_x",0,0,280,-80,270);
	Anim_Create(self,"_confirm_name_y",0,0,72,158,270);
	Anim_Create(self,"_confirm_name_scale",0,0,2,5,270);
	_choice_confirm=0;
	with(text_typer){
		event_user(15);
	}
	event_user(5);
}else{
	if(instance_exists(_inst_confirm_title)){
		instance_destroy(_inst_confirm_title);
	}
	if(instance_exists(_inst_confirm_no)){
		instance_destroy(_inst_confirm_no);
	}
	if(instance_exists(_inst_confirm_yes)){
		instance_destroy(_inst_confirm_yes);
	}
}

if(_menu==3){
	fader.color=c_white;
	Fader_Fade(-1,1,240);
	alarm[0]=240;
}