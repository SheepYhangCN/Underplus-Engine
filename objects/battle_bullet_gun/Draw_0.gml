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
draw_self();
if(image_alpha>=1){
draw_set_color(image_blend)
draw_set_alpha(0.65)
if(hoffset){
draw_sprite(sprite_index,0,x,y+aim_offset)
draw_sprite(sprite_index,0,x,y-aim_offset)}
if(voffset){
draw_sprite(sprite_index,0,x+aim_offset,y)
draw_sprite(sprite_index,0,x-aim_offset,y)}
draw_set_color(c_white)
draw_set_alpha(1)
}