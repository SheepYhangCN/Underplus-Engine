var col
col = c_white;
if(type==1){
	col=c_aqua
}else if(type==2){
	col=c_orange
}else if (type == 3){
    col=c_lime
}
if(color_blend = 0){
	draw_sprite_ext(sprite_index,image_index,x,y,(scale_y*image_xscale),(scale_x*image_yscale),image_angle,image_blend,image_alpha);
    if (type == 0)
        image_blend = c_white;
    else if (type == 1)
        image_blend = c_aqua
    else if (type == 2)
        image_blend = c_orange
    else if (type == 3)
        image_blend = c_lime
}
else{
	draw_sprite_ext(sprite_index,image_index,x,y,(scale_y*image_xscale),(scale_x*image_yscale),image_angle,image_blend,image_alpha);
}