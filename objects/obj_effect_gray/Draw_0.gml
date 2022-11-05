if(!surface_exists(surface)){surface=surface_create(640,480)}

surface_set_target(surface)
draw_surface(application_surface,0,0)
surface_reset_target()

draw_set_color(c_black)
draw_rectangle(0,0,640,480,0)
draw_set_color(c_white)

shader_set(shd_gray)
draw_surface(surface,0,0)
shader_reset()
