var proc=0;
var NUMBER=Battle_GetEnemyActionNumber(battle_enemy._enemy_slot);
var CURRENT=Battle_GetMenuChoiceAction();

repeat(NUMBER){
	draw_sprite(spr_battle_menu_item_scrollbar_dot,proc==CURRENT,x,y-11*floor(NUMBER/2)+11*proc);
	proc+=1;
}

if(NUMBER>1){
	if(battle._menu_choice_action!=0){
		draw_sprite(spr_battle_menu_item_scrollbar_arrow,0,x,y-10*floor(NUMBER/2)-11-_arrow);
	}
	if(battle._menu_choice_action!=Battle_GetEnemyActionNumber(battle_enemy._enemy_slot)-1){
		draw_sprite_ext(spr_battle_menu_item_scrollbar_arrow,0,x,y-10*floor(NUMBER/2)+11*NUMBER+_arrow,1,-1,0,c_white,1);
	}
}