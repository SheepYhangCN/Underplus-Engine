if(_state==0){
	Flag_Clear(FLAG_TYPE.INFO);
	Flag_Load(FLAG_TYPE.INFO);
	
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	if(global.language=0){
	_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 1}EMPTY")
	}else if(global.language=1){
	_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 3}空")
	}
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
	
	_inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
	var minute=time div	60;
	var second=time mod 60;
	_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	_inst_room.text=_prefix+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	
	_inst_return=instance_create_depth(108+6+236,118+6+116,0,text_typer);
	if(global.language=0){
	if(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,-1)=-1){
	_inst_save.text=_prefix+"{font 1}Save"
	}else{
	_inst_save.text=_prefix+"{font 1}Overwrite"}
	_inst_return.text=_prefix+"{font 1}Return"
	}else if(global.language=1){
	if(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,-1)=-1){
	_inst_save.text=_prefix+"{font 3}保存"
	}else{
	_inst_save.text=_prefix+"{font 3}覆盖"}
	_inst_return.text=_prefix+"{font 3}返回"
	}
}
if(_state==1){
	Player_Save(0);
	
	audio_play_sound(snd_save,0,false);
	
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
	if(instance_exists(_inst_save)){
		instance_destroy(_inst_save);
	}
	if(instance_exists(_inst_return)){
		instance_destroy(_inst_return);
	}
	
	_inst_name=instance_create_depth(108+6+26,118+6+16,0,text_typer);
	if(global.language=0){
	_inst_name.text=_prefix+"{color `yellow`}"+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 1}EMPTY");
	}else if(global.language=1){
	_inst_name.text=_prefix+"{color `yellow`}"+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"{font 3}空");
	}
	
	_inst_lv=instance_create_depth(108+6+180,118+6+16,0,text_typer);
	_inst_lv.text=_prefix+"{color `yellow`}"+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
	
	_inst_time=instance_create_depth(108+6+338,118+6+16,0,text_typer);
	var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
	var minute=time div 60;
	var second=time mod 60;
	_inst_time.text=_prefix+"{color `yellow`}"+string(minute)+":"+(second<10 ? "0" : "")+string(second);
	
	_inst_room=instance_create_depth(108+6+26,118+6+56,0,text_typer);
	_inst_room.text=_prefix+"{color `yellow`}"+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
	//_inst_room.text=_prefix+"{color `yellow`}"+Lang_GetString("custom.save.name.lobby")
	
	_inst_save=instance_create_depth(108+6+56,118+6+116,0,text_typer);
	if(global.language=0){
	if(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,-1)=-1){
	_inst_save.text=_prefix+"{color `yellow`}{font 1}File Saved."
	}else{
	_inst_save.text=_prefix+"{color `yellow`}{font 1}File Overwrited."}
	}else if(global.language=1){
	if(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,-1)=-1){
	_inst_save.text=_prefix+"{color `yellow`}{font 3}档案已储存。"
	}else{
	_inst_save.text=_prefix+"{color `yellow`}{font 3}档案已覆盖。"}
	}
}