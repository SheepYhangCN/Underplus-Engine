if (type == 0){
    image_blend = c_white}
if (type == 1){
    image_blend = c_aqua//make_color_rgb(20, 196, 255)
	}
if (type == 2){
    image_blend = c_orange//make_color_rgb(248, 148, 29)
	}
if (type == 3){
    image_blend = c_lime}
if (type == 4){
    image_blend = c_red
	hit_damage=99999999}
//surface_set_target(Battle_GetBoardSurface());{
	draw_self();
//}surface_reset_target();
if(global.debug=true){
draw_set_font(font_chs_enemy)
draw_set_color(c_white)
draw_text_transformed(x,y,string(type)+"\n"+string(warning_time)+"\n"+string(knife_time)+"\n"+string(width)+"\n"+string(hit_damage),1,1,image_angle)}