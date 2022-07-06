if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(Input_IsPressed(INPUT.LEFT)){
		if(_choice==1){
			_choice=0;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		if(_choice==0){
			_choice=1;
			audio_play_sound(snd_menu_switch,0,false);
		}
	}else if(Input_IsPressed(INPUT.UP)&&_slot>0){
			_slot-=1
			Flag_SetSaveSlot(_slot)
			event_user(0)
			audio_play_sound(snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.DOWN)&&_slot<9){
			_slot+=1
			Flag_SetSaveSlot(_slot)
			event_user(0)
			audio_play_sound(snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice==0){
			_state=1;
			event_user(0);
		}else{
			instance_destroy();
			Flag_SetSaveSlot(_slottemp)
		}
	}else if(Input_IsPressed(INPUT.CANCEL)){
		instance_destroy();
		Flag_SetSaveSlot(_slottemp)
	}
}else if(_state==1){
	if(Input_IsPressed(INPUT.CONFIRM)||Input_IsPressed(INPUT.CANCEL)){
		instance_destroy();
	}
}