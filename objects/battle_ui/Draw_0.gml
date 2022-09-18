draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
if(global.battle=13||global.battle=14){
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   FN "+string(Player_GetLv()));
}else{
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
}
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);
if(hp_bar_lock=-1){event_user(0)}else{event_user(1)}