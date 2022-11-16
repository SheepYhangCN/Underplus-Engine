//if(gamepad_is_supported()&&gamepad_is_connected(0)){
if(input_check("up")){keyboard_key_press(vk_up)}
if(input_check("down")){keyboard_key_press(vk_down)}
if(input_check("left")){keyboard_key_press(vk_left)}
if(input_check("right")){keyboard_key_press(vk_right)}

if(input_check("pad_up")){keyboard_key_press(ord("W"))}
if(input_check("pad_down")){keyboard_key_press(ord("S"))}
if(input_check("pad_left")){keyboard_key_press(ord("A"))}
if(input_check("pad_right")){keyboard_key_press(ord("D"))}

if(input_check("confirm")){keyboard_key_press(vk_enter)}
if(input_check("cancel")){keyboard_key_press(vk_shift)}
if(input_check("control")){keyboard_key_press(vk_control)}
if(input_check("space")){keyboard_key_press(vk_space)}

if(input_check("select")){keyboard_key_press(vk_f2)}
if(input_check("pause")){keyboard_key_press(vk_escape)}
//}