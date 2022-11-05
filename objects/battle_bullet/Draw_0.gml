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
surface_set_target(Battle_GetBoardSurface());{
	draw_self();
}surface_reset_target();