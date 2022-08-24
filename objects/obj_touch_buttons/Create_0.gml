/// @description Assign Keys / Buttons

//should_show_touch_areas = false  // For debugging / customizing

/**	
	If 'should_show_touch_areas' is set to 'true', you'll be able 
	to see where the touch areas are being activated, (by default, 
	they show up in white) and you can then use those as references 
	to setting their coordinates to the ones that your game requires.	
	
	When you're satisfied with the customizations, you can set this 
	variable to 'false' again. Now touching those areas will continue 
	to respond as your code specifies, but the white color will be 
	gone, giving room to the sprites.
**/

					/** Touch Areas - Virtual Keys **/
/**	
	The function 'virtual_key_add()' allows you to define touch areas 
	that trigger keyboard events. For that, you need to specify the 
	coordinates, the size and a 'keycode', such as: 'ord("X")' for 
	your 'virtual key'. 
	
	Then, when a touch happens within the coordinates you've set, all 
	events associated with 'ord("X")' will be triggered.
**/				

// Buttons		  
vk_button_x		  = virtual_key_add(655-200, 280+80, 48, 48, ord("C"))
vk_button_y		  = virtual_key_add(710-200, 225+80, 48, 48, vk_space) 
vk_button_a		  = virtual_key_add(710-200, 335+80, 48, 48, ord("X")) 
vk_button_b		  = virtual_key_add(765-200, 280+80, 48, 48, ord("Z")) 

// Rectangles
/*vk_bigger_area	  = virtual_key_add(400, 260, 210, 110, vk_control)
vk_bottom_area	  = virtual_key_add(400, 400, 210, 60,  vk_space)

				 /** End of 'Touch Areas - Virtual Keys' **/