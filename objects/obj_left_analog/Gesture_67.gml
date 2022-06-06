/// @description Update Finger's Position

// Coordinates of the "dragging event"
var gui_pos_x = event_data[? "guiposX"]
var gui_pos_y = event_data[? "guiposY"]

var axis_radius = point_distance(x, y, gui_pos_x, gui_pos_y)

// Is the finger inside the diameter?
if (axis_radius < circle_area * screen_size)
{
	last_gui_pos_x		= gui_pos_x
	last_gui_pos_y		= gui_pos_y
	is_using_analog		= true
	is_inside_diameter	= true
} 

// Is the finger somewhere between the border and its boundaries?
if (axis_radius >= circle_area * screen_size 
and axis_radius <= circle_border * screen_size)
{
	is_using_analog		= true
	is_inside_diameter	= false
	last_gui_pos_x		= gui_pos_x
	last_gui_pos_y		= gui_pos_y
}