if(instance_exists(obj_games)){depth=obj_games.depth+1}else{depth=201}
image_xscale=room_width
image_yscale=room_height
uni_time = shader_get_uniform(shader_space, "iTime")
uni_resolution = shader_get_uniform(shader_space,"iResolution")
uni_mouse = shader_get_uniform(shader_space,"iMouse")
