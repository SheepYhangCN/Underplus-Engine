shader_set(shd_space)
 
shader_set_uniform_f(uni_time, current_time * 0.001)
shader_set_uniform_f(uni_resolution, 640	, 380)
//shader_set_uniform_f(uni_mouse, mouse_x*0.1, -mouse_y*0.1)

draw_self()
shader_reset()
