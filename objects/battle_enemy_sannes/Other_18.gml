if(global.choice_button = 1||global.choice_button = 2||global.choice_button = 3||(global.choice_button = 0&&global.turn_number >= 7)){
		Battle_SetNextState(BATTLE_MENU.BUTTON)
		Battle_GotoNextState()
}
if(global.choice_button = 0){
		if(global.turn_number = 0){
			instance_create_depth(0,0,0,battle_sannes_turn0);
			//break;
		}
		if(global.turn_number = 1){
			instance_create_depth(0,0,0,battle_sannes_turn1);
			//break;
		}
		if(global.turn_number = 2){
			instance_create_depth(0,0,0,battle_sannes_turn2);
			//break;
		}
		if(global.turn_number = 3){
			instance_create_depth(0,0,0,battle_sannes_turn3);
			//break;
		}
		if(global.turn_number = 4){
			instance_create_depth(0,0,0,battle_sannes_turn4);
			//break;
		}
		if(global.turn_number = 5){
			instance_create_depth(0,0,0,battle_sannes_turn5);
			//break;
		}
		if(global.turn_number = 6){
			instance_create_depth(0,0,0,battle_sannes_turn6);
			if(global.language=0){
			Battle_SetMenuDialog("{font 0}* ok he's tired{sleep 15}&{color `red`}* KILL HIM =)")
			}else if(global.language=1){
			Battle_SetMenuDialog("{font 0}* {font 3}好他累了{sleep 15}{font 0}&{color `red`}* {font 3}解决他{font 0}=)")
			}
			//break;
		}
		if(global.turn_number >= 7){
			if(global.choice_button = 0){
			audio_stop_all()
			if(global.language=0){
			show_error("DEMO END!THANKS 4 PLAYING!",true)
			}else if(global.language=1){
			show_error("DEMO结束！感谢游玩！",true)
			}
		}}
}