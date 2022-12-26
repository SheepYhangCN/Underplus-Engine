///@desc Update Menu 0 Text Color
if(_mode==0){
	_change_inst=_inst_begin;
	_change_color=(_choice==0 ? c_yellow : c_white);
	event_user(1);
	_change_inst=_inst_settings;
	_change_color=(_choice==1 ? c_yellow : c_white);
	event_user(1);
	_change_inst=_inst_credits;
	_change_color=(_choice==2 ? c_yellow : c_white);
	event_user(1);
}else{
	_inst_continue.override_color_text=(_choice==0 ? c_yellow : ((file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))) ? c_white : c_gray));
	_inst_reset.override_color_text=(_choice==1 ? c_yellow : (Flag_GetSaveSlot()>=0&&Flag_GetSaveSlot()<=9 ? c_white : c_gray));
	_inst_settings.override_color_text=(_choice==2 ? c_yellow : c_white);
	_inst_credits.override_color_text=(_choice==3 ? c_yellow : c_white);
	_inst_save_options.override_color_text=(_choice==4 ? c_yellow : c_white);
}
