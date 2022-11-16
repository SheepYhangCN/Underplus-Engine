if(!surface_exists(surface)){surface=surface_create(room_width,room_height)}

surface_set_target(surface)
draw_surface(application_surface,0,0)
surface_reset_target()

draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_color(c_white)

var b=irandom(50)
if(b>=40){
	a=range_max
}else{
	a=range_min
}

for(i=0;i<=room_height;i++){
	draw_surface_part(surface,0,i,room_width,1,0+irandom_range(-a,a),i)
}