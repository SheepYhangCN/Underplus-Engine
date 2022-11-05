var proc=0;
var NUMBER=Battle_GetEnemyActionNumber(Battle_GetMenuChoiceEnemyNum());
var CURRENT=Battle_GetMenuChoiceAction();

repeat(NUMBER){
	draw_sprite(spr_battle_menu_item_scrollbar_dot,proc==CURRENT,x,y-11*floor(NUMBER/2)+11*proc);
	proc+=1;
}

if(NUMBER>1){
	if(battle._menu_choice_action!=0){
		draw_sprite(spr_battle_menu_item_scrollbar_arrow,0,x,y-10*floor(NUMBER/2)-11-_arrow);
	}
	if(battle._menu_choice_action!=Battle_GetEnemyActionNumber(Battle_GetMenuChoiceEnemy())-1){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x,y-10*floor(NUMBER/2)+11*NUMBER+_arrow,1,-1,0,c_white,1);
	}
}

draw_set_halign(fa_right)
draw_set_valign(fa_top)
draw_set_font(font_dialog)
draw_set_color(c_white)
draw_text_transformed(x-15,y-55,"("+string(CURRENT+1)+"/"+string(NUMBER)+")",2,2,0)
draw_set_halign(fa_left)