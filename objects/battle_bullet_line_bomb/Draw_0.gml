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
draw_set_alpha(beam_alpha)
draw_set_color(image_blend)
draw_line_width(x-lengthdir_x(640,angle),y-lengthdir_y(640,angle),x+lengthdir_x(640,angle),y+lengthdir_y(640,angle),width)
if(crossing>=1){draw_line_width(x-lengthdir_x(640,angle+90),y-lengthdir_y(640,angle+90),x+lengthdir_x(640,angle+90),y+lengthdir_y(640,angle+90),width)}
if(crossing>=2){
draw_line_width(x-lengthdir_x(640,angle+45),y-lengthdir_y(640,angle+45),x+lengthdir_x(640,angle+45),y+lengthdir_y(640,angle+45),width)
draw_line_width(x-lengthdir_x(640,angle-45),y-lengthdir_y(640,angle-45),x+lengthdir_x(640,angle-45),y+lengthdir_y(640,angle-45),width)
}
draw_set_color(c_white)
draw_set_alpha(1)