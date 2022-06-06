/// @description For The Analog

// This simply draws the sprite
draw_sprite_ext
(
	spr_left_analog, 0, 
	x, y, 
	1.1, 1.1,							// X and Y Scale
	0,									// Rotation
	make_color_rgb(200, 50, 25),		// Color
	0.3									// Alpha
)

// The inner circle
draw_circle_color
(
	x + dir_x, y + dir_y, 
	circle_area / 3,					// Radius
	c_white, c_red, 
	true
)