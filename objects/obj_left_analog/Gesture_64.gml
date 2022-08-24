/// @description Get Tap Coordinates

// Where the tap happened
var _pos_x = event_data[? "guiposX"] 
var _pos_y = event_data[? "guiposY"]

var axis_radius = point_distance(x, y, _pos_x, _pos_y)

// Is the finger inside the diameter?
if (axis_radius < circle_area * screen_size)
{
	last_gui_pos_x		= _pos_x		
	last_gui_pos_y		= _pos_y
	is_using_analog		= true			
	is_inside_diameter  = true
} 

// Is the finger somewhere between the border and its boundaries?
if (axis_radius >= circle_area * screen_size 
and axis_radius <= circle_border * screen_size)
{
	last_gui_pos_x		= _pos_x		
	last_gui_pos_y		= _pos_y
	is_using_analog		= true			
	is_inside_diameter  = false
}

// Wait 1 second to reset the axis
alarm[0] = 3//1 * room_speed