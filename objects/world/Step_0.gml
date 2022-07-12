Anim_Step();
BGM_Step();
//global.hp = Player_GetHp();

if(volume<0){
volume=0}
if(volume>1){
volume=1}
audio_master_gain(volume)

if(_time>=60){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.TIME,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)+1);
	_time=0;
}else{
	_time+=1;
}

if(Game_GetFrameSkip()>0){
	if(_frame_skip>=Game_GetFrameSkip()){
		draw_enable_drawevent(true);
		_frame_skip=0;
	}else{
		_frame_skip+=1;
		draw_enable_drawevent(false);
	}
}else{
	draw_enable_drawevent(true);
}
if(room!=room_battle){
global.enemy=0}
if(room!=room_shop){
global.shop=0}

if(Player_GetHp()+Player_GetKR()>Player_GetHpMax()){
Player_SetHp(Player_GetHpMax()-Player_GetKR())}

if(Player_GetHp()<=1 && Player_GetKR()>0){
Player_SetHp(1)}

if(Player_GetKR()>Player_GetHpMax()-1&&Player_GetHp()=1){
Player_SetKR(Player_GetHpMax()-1)}

if(keyboard_check_pressed(vk_f2)){
	room_restart();
}

if(keyboard_check_pressed(vk_f1)){
	game_restart();
}

if(keyboard_check_pressed(vk_f4)&&!keyboard_check(vk_alt)&&!keyboard_check(vk_control)&&!keyboard_check(vk_shift)){
	window_set_fullscreen(!window_get_fullscreen());
	if(window_get_fullscreen()=true){
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,2)}
	if(window_get_fullscreen()=false){
	Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,1)}
	Flag_Save(FLAG_TYPE.SETTINGS)
	//display_set_gui_maximize();
}
if(keyboard_check(ord("T"))){
if(keyboard_check(ord("A"))){
if(keyboard_check_pressed(ord("S"))){
	if(global.tas=false){
	audio_play_sound(snd_save,0,0)
	global.tas=true
	}else if(global.tas=true){
	global.tas=false
	room_speed=60}
}}}
if(global.tas=true){
if(keyboard_check(vk_lalt)){
room_speed-=1}
if(keyboard_check(vk_ralt)){
room_speed+=1}
}
if(keyboard_check_pressed(vk_backspace)){
if(instance_exists(obj_left_analog)||instance_exists(obj_touch_buttons)){
instance_destroy(obj_left_analog)
instance_destroy(obj_touch_buttons)
}else{
instance_create_depth(0,0,depth-1,obj_left_analog)
instance_create_depth(0,0,depth-1,obj_touch_buttons)}
if(global.language=0){
show_message_async("Tap back button(mobile) or backspace key(desktop) to switch the mobile controller.")}
if(global.language=1){
show_message_async("按下返回键(移动端)或退格键(桌面端)来开关移动端控制。")}
}

if(instance_exists(battle_soul_yellow)||instance_exists(battle_soul_yellow_aqua)||instance_exists(battle_soul_yellow_orange)||instance_exists(battle_soul_yellow_aqua_orange)){
cursor_sprite=noone
}else if(display_mouse_get_x()=window_get_x()+window_mouse_get_x()&&display_mouse_get_y()=window_get_y()+window_mouse_get_y()){
cursor_sprite=spr_cursor
}else{
cursor_sprite=noone}

//边框
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)>0){
if(Border_GetSprite()!=Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0))){
Border_SetSprite(Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)))}
//if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)=1&&Border_GetSprite()!=Border_Get_DynamicSprite()){
	//Border_SetSprite(Border_Get_DynamicSprite())
}//}
else if(Border_IsEnabled()){Border_SetEnabled(false)}