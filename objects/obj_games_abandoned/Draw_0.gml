draw_self()

//初始化
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(font_dialog)
if(global.language=LANGUAGE.SCHINESE){draw_set_font(font_chs)}
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

#region 标签页
if(!variable_instance_exists(id,"audio_temp")){audio_temp=false}
if(image_index mod 2 = 0){
draw_set_color(c_yellow)
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(161.5-1,32.5-1,"Battles",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(161.5-1,32.5-1,"战斗",2,2,0)}
if((os_type=os_windows||os_type=os_gxgames||os_type=os_linux||os_type=os_macosx)&&mouse_y>=5&&mouse_y<=59&&mouse_x>=323&&mouse_x<=634){if(!audio_temp){audio_play_sound(snd_menu_switch,0,0);}audio_temp=true;draw_set_color(c_yellow)}else{audio_temp=false;draw_set_color(c_white)}
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(322+156.5-1,32.5+1,"Minigames",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(322+156.5-1,32.5+1,"小游戏",2,2,0)}
draw_set_color(c_white)
draw_sprite(spr_battle_soul_red,0,32,31)
}
if(image_index mod 2 != 0){
if((os_type=os_windows||os_type=os_gxgames||os_type=os_linux||os_type=os_macosx)&&mouse_y>=5&&mouse_y<=59&&mouse_x>=5&&mouse_x<=317){if(!audio_temp){audio_play_sound(snd_menu_switch,0,0);}audio_temp=true;draw_set_color(c_yellow)}else{audio_temp=false;draw_set_color(c_white)}
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(161.5+1,32.5+1,"Battles",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(161.5+1,32.5+1,"战斗",2,2,0)}
draw_set_color(c_yellow)
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(322+156.5+1,32.5-1,"Minigames",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(322+156.5+1,32.5-1,"小游戏",2,2,0)}
draw_set_color(c_white)
draw_sprite(spr_battle_soul_red,0,room_width-32,31)
}
#endregion

//游戏选择
#region shop
if(!variable_instance_exists(id,"audio_temp_shop")){audio_temp_shop=false}
var list_check=(os_type=os_windows||os_type=os_gxgames||os_type=os_linux||os_type=os_macosx)&&mouse_x>=5&&mouse_x<=194
if(list_check&&mouse_y>=433&&mouse_y<=474){if(!audio_temp_shop){audio_play_sound(snd_menu_switch,0,0);}audio_temp_shop=true;draw_set_color(c_yellow)}else{audio_temp_shop=false;draw_set_color(c_white)}
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(100,427+26,"Shop(WIP)",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(100,427+26,"商店(开发中)",2,2,0)}
draw_set_color(c_white)
draw_sprite(spr_battle_soul_red,0,170,82+41*choice)
#endregion
//游戏
#region 阶段选择(战斗)
if(image_index mod 2 = 0){
switch choice{
case 0://雪镇杉
	break
case 1://阿尼亚
	break
case 2://原杉
	break
case 3://utc杉
	break
case 4://海绵宝宝
	break
case 5://沃玛
	break
case 6://核心杉
	break
}
#endregion
#region 阶段选择(小游戏)
}else{
switch choice{
case 0://3分钟大风车
	break
}}
#endregion


//右边Phase
//TODO

draw_set_valign(fa_top)
draw_set_halign(fa_left)