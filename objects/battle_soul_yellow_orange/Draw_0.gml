event_inherited();

if(display_mouse_get_x()=window_get_x()+window_mouse_get_x()&&display_mouse_get_y()=window_get_y()+window_mouse_get_y()&&Battle_GetState()=BATTLE_STATE.IN_TURN){
draw_sprite_ext(spr_battle_soul_yellow_target,0,mouse_x,mouse_y,1,1,rot,c_white,1)
rot+=5
}