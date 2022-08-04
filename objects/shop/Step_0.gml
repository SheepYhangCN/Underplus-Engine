switch(_state){
	case SHOP_STATE.ENCOUNTER:
		if(_dialog == true && !instance_exists(shop_dialog_typer))
		{
			_dialog = false;
			Shop_GoState(SHOP_STATE.MENU);
		}
		break;
	case SHOP_STATE.MENU:
		if(Input_IsPressed(INPUT.UP))
		{
			if(_index<=0)
				_index=3;
			else
				_index-=1;
		}
		if(Input_IsPressed(INPUT.DOWN))
		{
			if(_index>=3)
				_index=0;
			else
				_index+=1;
		}
		if(Input_IsPressed(INPUT.CONFIRM))
		{
			switch(_index)
			{
				case 0:
				default:
					Shop_GoState(SHOP_STATE.BUY);
					break;
				case 1:
					Shop_GoState(SHOP_STATE.SELL);
					_index = 0;
					break;
				case 2:
					Shop_GoState(SHOP_STATE.DIALOG);
					break;
				case 3:
					Shop_GoState(SHOP_STATE.EXIT);
			}
		}
		break;
	case SHOP_STATE.BUY:
		if(_index<4)
		{
			buy_info_inst_y-=min(buy_info_vspeed,buy_info_inst_y-buy_info_y);
			if(!instance_exists(_typer_info))
				Shop_RefreshTyper(false,false,false,true);
			_typer_info.y = buy_info_inst_y+height_text;
		}
		else
		{
			buy_info_inst_y+=min(buy_info_vspeed,border_y1-buy_info_inst_y);
			if(instance_exists(_typer_info))
			{
				instance_destroy(_typer_info);
			}
		}
		switch(_choice_state)
		{
			case 0:
			case 2:
			case 3:
			case 4:
			default:
				if(Input_IsPressed(INPUT.UP))
				{
					if(_index<=0)
						_index=4;
					else
						_index-=1;
					Shop_RefreshTyper(false,false,false,true);
				}
				if(Input_IsPressed(INPUT.DOWN))
				{
					if(_index>=4)
						_index=0;
					else
						_index+=1;
					Shop_RefreshTyper(false,false,false,true);
				}
				if(Input_IsPressed(INPUT.CONFIRM))
				{
					if(_index<4)
					{
						var ITEM = _item[_index];
						if(Item_GetNumber()<8&&Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD)>=ITEM._price_buy){
							_choice_state = 1;
						}
						else if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD)<ITEM._price_buy){
							_choice_state = 3;
						}
						else if(Item_GetNumber()>=8){
							_choice_state = 4;
						}
						Shop_RefreshTyper(false,true,false,false);
					}
					else
						Shop_GoState(SHOP_STATE.MENU);
				}
				if(Input_IsPressed(INPUT.CANCEL))
				{
					Shop_GoState(SHOP_STATE.MENU);
				}
				break;
			case 1:
				if(Input_IsPressed(INPUT.UP)||Input_IsPressed(INPUT.DOWN))
				{
					_index_buy = 1-_index_buy;
				}
				if(Input_IsPressed(INPUT.CONFIRM))
				{
					if(_index_buy==0)
					{
						var ITEM = _item[_index];
						Item_Add(ITEM.object_index);
						Player_SetGold(Player_GetGold()-ITEM._price_buy);
						_choice_state = 2;
						Shop_RefreshTyper(false,true,true,false);
						audio_play_sound(_snd_buy_item,0,false);
					}
					else
					{
						_choice_state = 0;
						Shop_RefreshTyper(false,true,false,false);
						_index_buy = 0;
					}
				}
				if(Input_IsPressed(INPUT.CANCEL))
				{
					_choice_state = 0;
					Shop_RefreshTyper(false,true,false,false);
					_index_buy = 0;
				}
		}
		break;
	case SHOP_STATE.SELL:
		if(_host.sold_available){
			var NUM = Item_GetNumber();
			if(NUM > 0)
			{
				switch(_choice_state)
				{
					case 0:
					default:
						if(Input_IsPressed(INPUT.UP))
						{
							if(_index>=8)
								_index=NUM-1;
							else if(_index > 1)
								_index -= 2;
							else
								_index = 8;
						}
						if(Input_IsPressed(INPUT.DOWN))
						{
							_index += 2;
							if(_index>=NUM){
								_index = 8;
							}
						}
						if(Input_IsPressed(INPUT.LEFT)||Input_IsPressed(INPUT.RIGHT))
						{
							var INDEX = 2*(_index div 2) + (1 - _index mod 2)
							if(_index < 8 && INDEX < NUM)
								_index = INDEX;
						}
						if(Input_IsPressed(INPUT.CONFIRM))
						{
							if(_index < 8)
							{
								_choice_state = 1;
								Shop_RefreshTyper();
							}
							else{
								Shop_GoState(SHOP_STATE.MENU);
								_index = 1;
							}
						}
						if(Input_IsPressed(INPUT.CANCEL)){
							Shop_GoState(SHOP_STATE.MENU);
							_index = 1;
						}
						break;
					case 1:
						if(Input_IsPressed(INPUT.LEFT)||Input_IsPressed(INPUT.RIGHT))
							_index_sell = 1 - _index_sell;
						if(Input_IsPressed(INPUT.CONFIRM))
						{
							if(_index_sell==0)
							{
								Player_SetGold(Player_GetGold()+Item_GetSellGold(Item_Get(_index)));
								Item_Remove(_index);
								if(_index<=Item_GetNumber())
									_index = Item_GetNumber()-1;
								audio_play_sound(_snd_buy_item,0,false);
							}
							
							_choice_state=0;
							
							Shop_RefreshTyper();
						}
						if(Input_IsPressed(INPUT.CANCEL))
						{
							_choice_state=0;
							Shop_RefreshTyper();
						}
						break;
				}
			}
			else
			{
				_index = 8;
				if(Input_IsPressed(INPUT.CONFIRM)||Input_IsPressed(INPUT.CANCEL))
					Shop_GoState(SHOP_STATE.MENU);
			}
			
		}
		else
		{
			if(_dialog==false)
			{
				Shop_DialogStart(_host.sold_false_text);
			}
			else
			{
				if(!instance_exists(shop_dialog_typer))
				{
					_dialog=false;
					Shop_GoState(SHOP_STATE.MENU);
				}
			}
		}
		break;
	case SHOP_STATE.DIALOG:
		if(_dialog==false)
		{
			if(Input_IsPressed(INPUT.UP))
			{
				if(_index<=0)
					_index=4;
				else
					_index-=1;
			}
			if(Input_IsPressed(INPUT.DOWN))
			{
				if(_index>=4)
					_index=0;
				else
					_index+=1;
			}
			if(Input_IsPressed(INPUT.CONFIRM))
			{
				if(_index<4)
				{
					Shop_CallDialog(_index);
				}
				else
				{
					Shop_GoState(SHOP_STATE.MENU);
				}
			}
			if(Input_IsPressed(INPUT.CANCEL))
			{
				Shop_GoState(SHOP_STATE.MENU);
				_index = 2;
			}
		}
		else
		{
			if(instance_exists(_typer_left))
			{
				instance_destroy(_typer_left);
			}
			if(instance_exists(_typer_right))
			{
				instance_destroy(_typer_right);
			}
			if(!instance_exists(shop_dialog))
			{
				_dialog=false;
				Shop_RefreshTyper();
			}
		}
		break;
	case SHOP_STATE.EXIT:
		if(_dialog==false)
		{
			Shop_DialogStart(_host.exit_text);
		}
		else
		{
			if(!instance_exists(shop_dialog_typer))
			{
				fader.alpha=0;
				Fader_Fade(-1,1,50);
				BGM_Resume(0);
				BGM_SetVolume(0,1);
				BGM_SetVolume(0,0,50);
				alarm[0]=50;
				_state = SHOP_STATE.CLOSE;
			}
		}
}