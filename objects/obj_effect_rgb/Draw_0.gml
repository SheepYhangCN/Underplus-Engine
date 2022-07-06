if(!surface_exists(surface))
	surface = surface_create(640,480);

surface_set_target(surface);
//draw_self();
//draw_sprite(spr_white,0,200,200)
surface_reset_target();

surface_set_target(application_surface);
shader_set(shd_rgb_separation);
shader_set_uniform_f_array(shader_get_uniform(shd_rgb_separation,"r_offset"),[5,5,0,0])
shader_set_uniform_f_array(shader_get_uniform(shd_rgb_separation,"g_offset"),[-5,5,0,0])
shader_set_uniform_f_array(shader_get_uniform(shd_rgb_separation,"b_offset"),[-5,-5,0,0])
draw_surface(surface,0,0);
shader_reset();
surface_reset_target();
