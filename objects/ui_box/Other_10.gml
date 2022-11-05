if(_state==0){
	_inst_inventory=instance_create_depth(16+6+82,16+6+8,0,text_typer);
	_inst_box=instance_create_depth(16+6+426,16+6+8,0,text_typer);
	_inst_finish=instance_create_depth(16+6+178,16+6+384,0,text_typer);
	if(global.language=LANGUAGE.ENGLISH){
	_inst_inventory.text=_prefix+"{font 1}INVENTORY"
	_inst_box.text=_prefix+"{font 1}BOX"
	_inst_finish.text=_prefix+"{font 1}Press [X] to finish"
	}else if(global.language=LANGUAGE.SCHINESE){
	_inst_inventory.text=_prefix+"{font 0}物品栏"
	_inst_box.text=_prefix+"{font 0}箱子"
	_inst_finish.text=_prefix+"{font 0}按下 {font 0}[X]{font 0} 以完成"
	}
	
	event_user(1);
}