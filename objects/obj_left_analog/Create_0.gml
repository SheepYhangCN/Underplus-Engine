/// @description Control Variables

// For the dragging / tap
last_gui_pos_x			= 0
last_gui_pos_y			= 0

/**			The range of detection
			
When dealing with virtual analogs, it's important to keep in mind 
that there may be cases when the player's fingers will go way off 
the analog without them even realizing.

But they will certainly notice "something's off" as soon as 
their player object stops responding.

To prevent that from happening, you can use 'circle_border' 
as a reference for detecting events outside the 'circle_area'. 

**/

circle_area				= 90	// For dragging / tapping inside the diameter
circle_border			= 180	// For dragging / tapping 180 pixels away from the border

is_using_analog			= false
is_inside_diameter		= false

// The coordinates
x = 100
y = 380

// For the inner circle's direction
dir_x = 0
dir_y = 0

// If your game resolution scales, you might wanna tweak 
// this value as well. Otherwise, just ignore it
screen_size = 1