draw_set_color(c_white);
draw_rectangle(border_x1, border_y1, border_x2, border_y2, false);

draw_set_color(c_black);
draw_rectangle(border_x1+border_width, border_y1+border_width, border_x2-border_width, border_y2-border_width, false);

if(_state==SHOP_STATE.MENU || _state==SHOP_STATE.BUY || (_state==SHOP_STATE.DIALOG && _dialog == false))
{
	draw_set_color(c_white);
	draw_rectangle(menu_divide_x, border_y1, menu_divide_x+border_width, border_y2, false);
}

switch(_state)
{
	case SHOP_STATE.MENU:
		draw_sprite_stretched(spr_battle_soul_red,0,menu_divide_x + 20,border_y1 + 14.5 + 20*_index,8,8);
		break;
	case SHOP_STATE.BUY:
		if(_choice_state == 1)
			draw_sprite_stretched(spr_battle_soul_red,0,menu_divide_x + 12,border_y1 + 48.5 + 17*_index_buy,8,8);
		else
			draw_sprite_stretched(spr_battle_soul_red,0,border_x1 + 12,border_y1 + 14.5 + 20*_index,8,8);
		break;
	case SHOP_STATE.SELL:
		if(_host.sold_available){
			var X,Y;
			if(_choice_state == 0)
			{
				X = border_x1 + 12 + 160*(_index mod 2);
				Y = border_y1 + 16 + 20*(_index div 2)-2;
			}
			else
			{
				X = border_x1 + 52 + 72*_index_sell + 40;
				Y = border_y1 + 67-2;
				//draw_set_font(font_determination1);
				//draw_set_color(c_white);
				////draw_text_transformed(160, border_y1 + 56, "Sell it for"+string(Item_GetSellGold(Item_Get(_index)))+"G?",0.5,0.5,0);
				////draw_text_transformed(border_x1 + 72 + 40, border_y1 + 76, "Yes",0.5,0.5,0);
				////draw_text_transformed(border_x1 + 72 + 40 + 80, border_y1 + 76, "No",0.5,0.5,0);
				//draw_text(95, border_y1 + 21, "Sell it for "+string(Item_GetSellGold(Item_Get(_index)))+"G?");
				//draw_text(border_x1 + 62 + 40, border_y1 + 56, "Yes");
				//draw_text(border_x1 + 62 + 40 + 80, border_y1 + 56, "No");
			}
			draw_sprite_stretched(spr_battle_soul_red,0,X,Y,8,8);
		}
		
		break;
	case SHOP_STATE.DIALOG:
		if(_dialog == false)
			draw_sprite_stretched(spr_battle_soul_red,0,border_x1 + 12,border_y1 + 14.5 + 20*_index,8,8);
		break;
	default:
		break;
}