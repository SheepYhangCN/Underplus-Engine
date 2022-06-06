/// @description Buttons

/** 
	Because we're scaling the sprites as we draw them, they get a little 
	off the coordinates we specify. To fix this, I added a difference 
	of 25px in their 'Xs' and 'Ys (compared to the 'virtual keys'') in order 
	to draw the buttons in their correct areas.
	
	However, if your game needs to draw these sprites (and virtual keys) in 
	different scale proportions, you'll probably have to change these 
	values again.
	
	In that case, you can make use of the 'should_show_touch_areas' variable 
	to decide where the best places for the touch areas are and draw the 
	sprites on them.
**/

draw_sprite_ext(spr_button_x, 0, 680-200, 305+80, 0.5, 0.5, 0, noone, 0.35) // X
draw_sprite_ext(spr_button_y, 0, 735-200, 250+80, 0.5, 0.5, 0, noone, 0.35) // Y
draw_sprite_ext(spr_button_a, 0, 735-200, 360+80, 0.5, 0.5, 0, noone, 0.35) // A
draw_sprite_ext(spr_button_b, 0, 790-200, 305+80, 0.5, 0.5, 0, noone, 0.35) // B


///////////// The code below is intended for debugging /////////////

if should_show_touch_areas 
{
	// Buttons
	virtual_key_show(vk_button_x)	; virtual_key_show(vk_button_y);
	virtual_key_show(vk_button_a)	; virtual_key_show(vk_button_b); 
/*
	virtual_key_show(vk_bigger_area);
	virtual_key_show(vk_bottom_area); 
*/
} else 
{
	/** These sprites are here just for reference. You can 
		safely delete them or use your own if you want to	**/
/*
	// Represents 'vk_bigger Area' 
	draw_sprite_ext(spr_bigger_area, 0, 400, 260, 1, 1, 0, c_fuchsia, 0.8)

	// Represents 'vk_bottom Area' 
	draw_sprite_ext(spr_bottom_area, 0, 400, 400, 1, 1, 0, c_blue, 0.8)
	*/
	// Buttons again
	virtual_key_hide(vk_button_x)	; virtual_key_hide(vk_button_y);
	virtual_key_hide(vk_button_a)	; virtual_key_hide(vk_button_b); 
/*
	virtual_key_hide(vk_bigger_area);
	virtual_key_hide(vk_bottom_area); 
	*/
} 