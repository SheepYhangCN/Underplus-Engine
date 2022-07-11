global.turn_number = Battle_GetTurnNumber();
global.choice_button = Battle_GetMenuChoiceButton();
tempx=battle_soul.x
tempy=battle_soul.y

//菜单
if(_state==BATTLE_STATE.MENU){
	//按钮
	if(_menu==BATTLE_MENU.BUTTON){
		//左/右
		if(Input_IsPressed(INPUT.LEFT)){
			var button=_menu_choice_button;
			if((instance_exists(battle_button_fight)&&instance_exists(battle_button_act))||(instance_exists(battle_button_fight)&&instance_exists(battle_button_item))||(instance_exists(battle_button_fight)&&instance_exists(battle_button_mercy))||(instance_exists(battle_button_act)&&instance_exists(battle_button_item))||(instance_exists(battle_button_act)&&instance_exists(battle_button_mercy))||(instance_exists(battle_button_item)&&instance_exists(battle_button_mercy))){
			button-=1;
			audio_play_sound(snd_menu_switch,0,false);}
			if(button<0){
				button=3;
			}
			if(Battle_GetMenuChoiceButton()=0&&!instance_exists(battle_button_mercy)&&instance_exists(battle_button_item)){
			button=2}
			if(Battle_GetMenuChoiceButton()=0&&!instance_exists(battle_button_mercy)&&!instance_exists(battle_button_item)&&instance_exists(battle_button_act)){
			button=1}
			if(Battle_GetMenuChoiceButton()=1&&!instance_exists(battle_button_fight)&&instance_exists(battle_button_mercy)){
			button=3}
			if(Battle_GetMenuChoiceButton()=1&&!instance_exists(battle_button_fight)&&!instance_exists(battle_button_mercy)&&instance_exists(battle_button_item)){
			button=2}
			if(Battle_GetMenuChoiceButton()=2&&!instance_exists(battle_button_act)&&instance_exists(battle_button_fight)){
			button=0}
			if(Battle_GetMenuChoiceButton()=2&&!instance_exists(battle_button_act)&&!instance_exists(battle_button_fight)&&instance_exists(battle_button_mercy)){
			button=3}
			if(Battle_GetMenuChoiceButton()=3&&!instance_exists(battle_button_item)&&instance_exists(battle_button_act)){
			button=1}
			if(Battle_GetMenuChoiceButton()=3&&!instance_exists(battle_button_item)&&!instance_exists(battle_button_act)&&instance_exists(battle_button_fight)){
			button=0}
			Battle_SetMenuChoiceButton(button);
		}else if(Input_IsPressed(INPUT.RIGHT)){
			var button=_menu_choice_button;
			if((instance_exists(battle_button_fight)&&instance_exists(battle_button_act))||(instance_exists(battle_button_fight)&&instance_exists(battle_button_item))||(instance_exists(battle_button_fight)&&instance_exists(battle_button_mercy))||(instance_exists(battle_button_act)&&instance_exists(battle_button_item))||(instance_exists(battle_button_act)&&instance_exists(battle_button_mercy))||(instance_exists(battle_button_item)&&instance_exists(battle_button_mercy))){
			button+=1;
			audio_play_sound(snd_menu_switch,0,false);}
			if(button>3){
				button=0;
			}
			if(Battle_GetMenuChoiceButton()=0&&!instance_exists(battle_button_act)&&instance_exists(battle_button_item)){
			button=2}
			if(Battle_GetMenuChoiceButton()=0&&!instance_exists(battle_button_act)&&!instance_exists(battle_button_item)&&instance_exists(battle_button_mercy)){
			button=3}
			if(Battle_GetMenuChoiceButton()=1&&!instance_exists(battle_button_item)&&instance_exists(battle_button_mercy)){
			button=3}
			if(Battle_GetMenuChoiceButton()=1&&!instance_exists(battle_button_item)&&!instance_exists(battle_button_mercy)&&instance_exists(battle_button_fight)){
			button=0}
			if(Battle_GetMenuChoiceButton()=2&&!instance_exists(battle_button_mercy)&&instance_exists(battle_button_fight)){
			button=0}
			if(Battle_GetMenuChoiceButton()=2&&!instance_exists(battle_button_mercy)&&!instance_exists(battle_button_fight)&&instance_exists(battle_button_act)){
			button=1}
			if(Battle_GetMenuChoiceButton()=3&&!instance_exists(battle_button_fight)&&instance_exists(battle_button_act)){
			button=1}
			if(Battle_GetMenuChoiceButton()=3&&!instance_exists(battle_button_fight)&&!instance_exists(battle_button_act)&&instance_exists(battle_button_item)){
			button=2}
			Battle_SetMenuChoiceButton(button);
		}
		
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false)
			switch(_menu_choice_button){
				case 0:
					Battle_SetMenu(BATTLE_MENU.FIGHT_TARGET);
					Anim_Create(battle_soul,"image_angle",0,0,0,90,3)
					Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,3)
					Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,3)
					break;
				case 1:
					Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
					Anim_Create(battle_soul,"image_angle",0,0,0,90,3)
					Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,3)
					Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,3)
					break;
				case 2:
					if(Item_GetNumber()>0){
					Battle_SetMenu(BATTLE_MENU.ITEM);
					Anim_Create(battle_soul,"image_angle",0,0,0,90,3)
					Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+45-tempx,3)
					Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*1-tempy,3)
					}else{
						audio_stop_sound(snd_menu_confirm);
					}
					break;
				case 3:
					Battle_SetMenu(BATTLE_MENU.MERCY);
					Anim_Create(battle_soul,"image_angle",0,0,0,90,3)
					Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,3)
					Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy-tempy,3)
					break;
			}
		}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=0)){battle_soul.image_angle=0}
	}else
	
	//战斗目标
	if(_menu==BATTLE_MENU.FIGHT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,5)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,5)
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,5)
		}
		
		//灵魂位置
		//if(!(Anim_IsExists(battle_soul,"x")&&battle_soul.x!=battle_board.x-battle_board.left-5+40)){battle_soul.x=battle_board.x-battle_board.left-5+40}
		//if(!(Anim_IsExists(battle_soul,"y")&&battle_soul.y!=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy)){battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=90)){battle_soul.image_angle=90}
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_button_fight.x-47-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_button_fight.y-tempy,2)
			Anim_Create(battle_soul,"image_angle",0,0,90,-90,3)
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.FIGHT_AIM);
		}
	}else
	
	//攻击条动画
	/*if(_menu==BATTLE_MENU.FIGHT_AIM){
			battle_soul.image_angle=0
			if(battle_menu_fight._dir=DIR.RIGHT){
			battle_soul.x=battle_menu_fight._aim_x}
			if(battle_menu_fight._dir=DIR.LEFT){
			battle_soul.x=battle_menu_fight._aim_x_1}
			battle_soul.y=320
	}else*/
	
	//战斗动画
	if(_menu==BATTLE_MENU.FIGHT_ANIM){
		if(_menu_fight_anim_time>0){
			_menu_fight_anim_time-=1;
		}else if(_menu_fight_anim_time==0){
			Battle_EndMenuFightAnim();
		}
	}else
	
	//战斗伤害
	if(_menu==BATTLE_MENU.FIGHT_DAMAGE){
		if(_menu_fight_damage_time>0){
			_menu_fight_damage_time-=1;
		}else if(_menu_fight_damage_time==0){
			Battle_EndMenuFightDamage();
			//audio_play_sound(snd_ding,0,0)
		}
	}else
	
	//行动目标
	if(_menu==BATTLE_MENU.ACT_TARGET){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var enemy=_menu_choice_enemy-1;
			if(enemy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,5)
		}else if(Input_IsPressed(INPUT.DOWN)){
			var enemy=_menu_choice_enemy+1;
			if(enemy<Battle_GetEnemyNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceEnemy(enemy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,5)
		}
		
		//灵魂位置
		//if(!(Anim_IsExists(battle_soul,"x")&&battle_soul.x!=battle_board.x-battle_board.left-5+40)){battle_soul.x=battle_board.x-battle_board.left-5+40}
		//if(!(Anim_IsExists(battle_soul,"y")&&battle_soul.y!=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy)){battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=90)){battle_soul.image_angle=90}
		
		//返回
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_button_act.x-47-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_button_act.y-tempy,2)
			Anim_Create(battle_soul,"image_angle",0,0,90,-90,3)
		}
		//确定
		if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_SetMenu(BATTLE_MENU.ACT_ACTION);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+45-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*1-tempy,2)
		}
	}else
	
	//行动内容
	if(_menu==BATTLE_MENU.ACT_ACTION){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var action=_menu_choice_action-1;
			if(action>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var action=_menu_choice_action+1;
			if(action<_enemy_action_number[Battle_ConvertMenuChoiceEnemyToEnemySlot(Battle_GetMenuChoiceEnemy())]){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceAction(action);
			}
		}
		
		//灵魂位置
		//if(!(Anim_IsExists(battle_soul,"x")&&battle_soul.x!=battle_board.x-battle_board.left-5+45)){battle_soul.x=battle_board.x-battle_board.left-5+45}
		//if(!(Anim_IsExists(battle_soul,"y")&&battle_soul.y!=battle_board.y-battle_board.up-5+36+32*1)){battle_soul.y=battle_board.y-battle_board.up-5+36+32*1}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=90)){battle_soul.image_angle=90}
		
		//返回/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.ACT_TARGET);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_enemy-tempy,2)
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}else
	
	//物品
	if(_menu==BATTLE_MENU.ITEM){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var slot=Battle_GetMenuChoiceItem()-1;
			if(slot>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			var slot=Battle_GetMenuChoiceItem()+1;
			if(slot<Item_GetNumber()){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceItem(slot);
			}
		}else if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_button_item.x-47-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_button_item.y-tempy,2)
			Anim_Create(battle_soul,"image_angle",0,0,90,-90,3)
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
		//if(!(Anim_IsExists(battle_soul,"x")&&battle_soul.x!=battle_board.x-battle_board.left-5+45)){battle_soul.x=battle_board.x-battle_board.left-5+45}
		//if(!(Anim_IsExists(battle_soul,"y")&&battle_soul.y!=battle_board.y-battle_board.up-5+36+32*1)){battle_soul.y=battle_board.y-battle_board.up-5+36+32*1}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=90)){battle_soul.image_angle=90}
	}else
	
	//仁慈
	if(_menu==BATTLE_MENU.MERCY){
		//上/下
		if(Input_IsPressed(INPUT.UP)){
			var mercy=Battle_GetMenuChoiceMercy()-1;
			if(mercy>=0){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy-tempy,2)
		}else if(Input_IsPressed(INPUT.DOWN)){
			var mercy=Battle_GetMenuChoiceMercy()+1;
			if((!Battle_IsMenuChoiceMercyOverride()&&mercy<=Battle_IsMenuMercyFleeEnabled()) || (Battle_IsMenuChoiceMercyOverride()&&mercy<Battle_GetMenuChoiceMercyOverrideNumber())){
				audio_play_sound(snd_menu_switch,0,false);
				Battle_SetMenuChoiceMercy(mercy);
			}
			Anim_Create(battle_soul,"x",0,0,tempx,battle_board.x-battle_board.left-5+40-tempx,5)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy-tempy,5)
		}
		
		//灵魂位置
		//if(!(Anim_IsExists(battle_soul,"x")&&battle_soul.x!=battle_board.x-battle_board.left-5+40)){battle_soul.x=battle_board.x-battle_board.left-5+40}
		//if(!(Anim_IsExists(battle_soul,"y")&&battle_soul.y!=battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy)){battle_soul.y=battle_board.y-battle_board.up-5+36+32*_menu_choice_mercy}
		//if(!(Anim_IsExists(battle_soul,"image_angle")&&battle_soul.image_angle!=90)){battle_soul.image_angle=90}
		
		//取消/确定
		if(Input_IsPressed(INPUT.CANCEL)){
			Battle_SetMenu(BATTLE_MENU.BUTTON);
			Anim_Create(battle_soul,"x",0,0,tempx,battle_button_mercy.x-47-tempx,2)
			Anim_Create(battle_soul,"y",0,0,tempy,battle_button_mercy.y-tempy,2)
			Anim_Create(battle_soul,"image_angle",0,0,90,-90,3)
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound(snd_menu_confirm,0,false);
			Battle_EndMenu();
		}
	}
}

//对话
if(_state==BATTLE_STATE.DIALOG){
	//battle_soul.image_angle=0
	if(!instance_exists(_dialog[0])){
		if(!Dialog_IsEmpty()){
			Battle_SetDialog(Dialog_Get()+"{pause}{end}");
		}else{
			if(Battle_IsDialogAutoEnd()){
				Battle_EndDialog();
			}
		}
	}
}

//回合准备
if(_state==BATTLE_STATE.TURN_PREPARATION){
	//battle_soul.image_angle=0
	if(Battle_IsTurnPreparationAutoEnd()){
		if(!instance_exists(battle_dialog_enemy) && !Battle_IsBoardTransforming()){
			Battle_EndTurnPreparation();
		}
	}
}

//回合内
if(_state==BATTLE_STATE.IN_TURN){
	//battle_soul.image_angle=0
	if(_turn_time>0){
		_turn_time-=1;
	}else if(_turn_time==0){
		Battle_EndTurn();
	}
}

//面板重置
if(_state==BATTLE_STATE.BOARD_RESETTING){
	if(!Battle_IsBoardTransforming()){
		Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BOARD_RESETTING_END);
		Battle_GotoNextState();
	}
}

if(_state==BATTLE_STATE.RESULT){
	if(!instance_exists(_dialog[0])){
		Battle_End();
	}
}

//检查战斗结束
if(_state!=BATTLE_STATE.RESULT && Battle_GetEnemyNumber()==0){
	Battle_SetState(BATTLE_STATE.RESULT);
	Battle_SetNextState(BATTLE_STATE.RESULT);
	BGM_Stop(5);
	var text="{define `EXP` "+string(Battle_GetRewardExp())+"}{define `GOLD` "+string(Battle_GetRewardGold())+"}";
	switch(global.language){
		case 0:
		text+="{font 0}* You WON!&* You earned {insert EXP} EXP and {insert GOLD} GOLD."
		case 1:
		text+="{font 0}* {font 3}你赢了！&* 你获得了 {font 0}{insert EXP} EXP {font 3}和 {font 0}{insert GOLD} {font 3}金钱。"
		}
	Player_SetExp(Player_GetExp()+Battle_GetRewardExp());
	Player_SetGold(Player_GetGold()+Battle_GetRewardGold());
	if(Player_UpdateLv()){
		switch(global.language){
		case 0:
		text+="&"+"{font 0}* Your LOVE increased."
		case 1:
		text+="&"+"{font 0}* {font 3}你的 {font 0}LOVE {font 3}增加了。"
		}
		audio_play_sound(snd_level_up,0,false);
	}
	text+="{pause}{end}";
	Battle_SetDialog(text);
}

//if(global.language=0){
//window_set_caption("YH!Undertale Games - Battle")
//}else if(global.language=1){
//window_set_caption("YH!Undertale Games - 战斗")
//}