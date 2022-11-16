_input_acceptable=true;
_aim_x=x-battle_board.left+sprite_get_width(spr_battle_menu_fight_aim)-10;
Anim_Create(id,"_aim_x",0,0,_aim_x,20,15)
_aim_x_1=x+battle_board.right-sprite_get_width(spr_battle_menu_fight_aim)+10;
Anim_Create(id,"_aim_x_1",0,0,_aim_x_1,-20,15)
alarm[3]=20