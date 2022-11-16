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
gpu_set_blendenable(true);
gpu_set_blendmode(bm_add);
shader_set(shd_TrailingLight);
	if(color_mode == 1){
	color = make_color_hsv(ca%255,255,255);
	ca++
	}
draw_primitive_begin_texture(pr_trianglestrip, tex);
draw_vertex_texture_colour(x, y, 0, 0.5, c_white, 1);
for(var i = 1; i <= length; i+=tex_length){
	
	if(color_mode = 2){
	color = make_color_hsv(i/length*360,length*255,length*255);
	}
	
	if(oldPosX[i] == 0)break;
	var n = (length - i) / length;
	if(color_mode = 1){
	draw_set_color(color);
	}if(color_mode = 2){
	draw_set_color(color);
	}if(color_mode = 3){
	draw_set_color(Color_lerp(color1,color0,n));
	}
	var width = widths * n;
	var dir = point_direction(oldPosX[i], oldPosY[i], oldPosX[i - 1], oldPosY[i - 1]) + 90;
	var fx = oldPosX[i] + width * dcos(dir);
	var fy = oldPosY[i] - width * dsin(dir);
	draw_vertex_texture(fx, fy, n, 1);
	
	dir = point_direction(oldPosX[i], oldPosY[i], oldPosX[i - 1], oldPosY[i - 1]) - 90;
	fx = oldPosX[i] + width * dcos(dir);
	fy = oldPosY[i] - width * dsin(dir);
	draw_vertex_texture(fx, fy, n, 0);
}
draw_primitive_end();
draw_self();
shader_reset();
gpu_set_blendmode(bm_normal);