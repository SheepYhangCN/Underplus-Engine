/// @description Using Joystick

if (is_using_analog)
		{ 
			var angle = point_direction(x, y, last_gui_pos_x, last_gui_pos_y)
			if (is_inside_diameter)
			{
				// For drawing the inner circle at the right place
				dir_x = last_gui_pos_x - x
				dir_y = last_gui_pos_y - y
				/*
				check(obj_player, "lerp", angle)
				check(obj_player, "move")
				*/
				/** Comment the function with the parameter 'move' if you want 
				the player object to just turn (and not move) as a dragging or 
					 tap event happens inside the analog's diameter	 **/
			} 
	
			if (!is_inside_diameter)
			{
				/** For making the inner circle follow the fingers 
				of the player when they're outside the diameter	**/
				dir_x = lengthdir_x(circle_area * screen_size, angle)
				dir_y = lengthdir_y(circle_area * screen_size, angle)
				/*
				check(obj_player, "lerp", angle)
				check(obj_player, "move")*/
			}
			/*if(keyboard_check(vk_left)){
			keyboard_key_release(vk_left)}
			if(keyboard_check(vk_right)){
			keyboard_key_release(vk_right)}
			if(keyboard_check(vk_up)){
			keyboard_key_release(vk_up)}
			if(keyboard_check(vk_down)){
			keyboard_key_release(vk_down)}*/
			//var key=vk_nokey
			if(angle<=157.5&&angle>=22.5){keyboard_key_release(vk_down);keyboard_key_press(vk_up)}
			if((angle<=67.5&&angle>=-67.5)||(angle<=427.5&&angle>=292.5)){keyboard_key_release(vk_left);keyboard_key_press(vk_right)}
			if(angle<=337.5&&angle>=202.5){keyboard_key_release(vk_up);keyboard_key_press(vk_down)}
			if(angle<=247.5&&angle>=112.5){keyboard_key_release(vk_right);;keyboard_key_press(vk_left)}
			/*if(key!=vk_nokey){
			if(keyboard_check(key)){
			keyboard_key_release(key)
			keyboard_key_press(key)}
			if(!keyboard_check(key)){
			keyboard_key_press(key)}
			if(keyboard_check(vk_left)){
			keyboard_key_release(vk_left)}
			if(keyboard_check(vk_right)){
			keyboard_key_release(vk_right)}
			if(keyboard_check(vk_up)){
			keyboard_key_release(vk_up)}
			if(keyboard_check(vk_down)){
			keyboard_key_release(vk_down)}
			}*/
		}

// Gets the inner circle back to the center
if (!is_using_analog) { dir_x = 0 dir_y = 0
	if(keyboard_check(vk_left)){
	keyboard_key_release(vk_left)}
	if(keyboard_check(vk_right)){
	keyboard_key_release(vk_right)}
	if(keyboard_check(vk_up)){
	keyboard_key_release(vk_up)}
	if(keyboard_check(vk_down)){
	keyboard_key_release(vk_down)}
	}