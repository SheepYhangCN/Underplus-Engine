if(!surface_exists(surface))
	surface = surface_create(640,480);

surface_set_target(surface);
draw_surface(application_surface,0,0);
surface_reset_target();

draw_set_color(c_black)
draw_rectangle(0,0,640,480,0)
draw_set_color(c_white)

for(x_=(640-640*s)/2-weight*640*s;x_<=(640-640*s)/2+weight*640*s;x_+=640*s){
	for(y_=(480-480*s)/2-weight*480*s;y_<=(480-480*s)/2+weight*480*s;y_+=480*s){
		draw_surface_ext(surface,x_,y_,s,s,0,c_white,1)
	}
}