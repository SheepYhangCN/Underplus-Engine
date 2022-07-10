roomsize = shader_get_uniform(shd_kaleidoscope, "iResolution")
Time = shader_get_uniform(shd_kaleidoscope, "iGlobalTime")
side = shader_get_uniform(shd_kaleidoscope, "SIDES")
also_angle = shader_get_uniform(shd_kaleidoscope, "also_angle")
a_angle = shader_get_uniform(shd_kaleidoscope, "a_angle")
also_length = shader_get_uniform(shd_kaleidoscope, "also_length")
depth=DEPTH_UI.FADER+5
time=current_time/1000
sides=4
camera_angle=1.58
angle=3
length=0.25

//mouse = shader_get_uniform(shd_, "iMouse")