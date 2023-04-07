if(global.controller){
if(input_check("up")){keyboard_key_press(vk_up)}else{keyboard_key_release(vk_up)}
if(input_check("down")){keyboard_key_press(vk_down)}else{keyboard_key_release(vk_down)}
if(input_check("left")){keyboard_key_press(vk_left)}else{keyboard_key_release(vk_left)}
if(input_check("right")){keyboard_key_press(vk_right)}else{keyboard_key_release(vk_right)}

if(input_check("pad_up")){keyboard_key_press(ord("W"))}else{keyboard_key_release(ord("W"))}
if(input_check("pad_down")){keyboard_key_press(ord("S"))}else{keyboard_key_release(ord("S"))}
if(input_check("pad_left")){keyboard_key_press(ord("A"))}else{keyboard_key_release(ord("A"))}
if(input_check("pad_right")){keyboard_key_press(ord("D"))}else{keyboard_key_release(ord("D"))}
if(global.controller=2){var key1=vk_enter;var key2=vk_shift;var key3=vk_control;var key4=vk_space}
if(global.controller=1){var key2=vk_enter;var key1=vk_shift;var key4=vk_control;var key3=vk_space}
if(input_check("confirm")){keyboard_key_press(key1)}else{keyboard_key_release(key1)}
if(input_check("cancel")){keyboard_key_press(key2)}else{keyboard_key_release(key2)}
if(input_check("control")){keyboard_key_press(key3)}else{keyboard_key_release(key3)}
if(input_check("space")){keyboard_key_press(key4)}else{keyboard_key_release(key4)}

if(input_check("select")){keyboard_key_press(vk_f2)}else{keyboard_key_release(vk_f2)}
if(input_check("pause")){keyboard_key_press(vk_escape)}else{keyboard_key_release(vk_escape)}
}