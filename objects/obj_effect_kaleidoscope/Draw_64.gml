shader_set(shd_kaleidoscope);
shader_set_uniform_f(Time, time)
shader_set_uniform_f(roomsize, room_width, room_height)
shader_set_uniform_f(side, sides)
shader_set_uniform_f(also_angle, angle)
shader_set_uniform_f(a_angle, camera_angle)
shader_set_uniform_f(also_length,length)
//shader_set_uniform_f(mouse, mouse_x, mouse_y)
draw_surface_part(application_surface,0,0,room_width,room_height,x,y)
shader_reset();