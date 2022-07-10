if(!surface_exists(surface))
	surface = surface_create(640,480);

surface_set_target(surface);
draw_surface(application_surface,0,0);
surface_reset_target();

draw_set_color(c_black)
draw_rectangle(0,0,640,480,0)
draw_set_color(c_white)

gpu_set_blendmode(bm_add)

if(shake){
draw_surface_ext(surface,irandom_range(-range,range),irandom_range(-range,range),1,1,0,c_red,1)
draw_surface_ext(surface,irandom_range(-range,range),irandom_range(-range,range),1,1,0,make_color_rgb(0,255,0),1)
draw_surface_ext(surface,irandom_range(-range,range),irandom_range(-range,range),1,1,0,c_blue,1)
}else{
draw_surface_ext(surface,-range,-range,1,1,0,c_red,1)
draw_surface_ext(surface,0,0,1,1,0,make_color_rgb(0,255,0),1)
draw_surface_ext(surface,range,range,1,1,0,c_blue,1)
}

gpu_set_blendmode(bm_normal)