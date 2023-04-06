if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Controller Detected")
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - 已检测到控制器")
}

if(temp!=1){
instance_destroy(keyboard)
instance_destroy(controller)

keyboard=instance_create_depth(160,220,0,text_typer)
controller=instance_create_depth(370,220,0,text_typer)

if(Input_IsPressed(INPUT.LEFT)||input_check("left")){
	if(choice=1){
	audio_play_sound(snd_menu_switch,0,0)}
	choice=0
}
if(Input_IsPressed(INPUT.RIGHT)||input_check("right")){
	if(choice=0){
	audio_play_sound(snd_menu_switch,0,0)}
	choice=1
}
if(global.language=LANGUAGE.ENGLISH){
if(choice=0){
keyboard.text=prefix+"{color `yellow`}Keyboard"
controller.text=prefix+"Controller"}
if(choice=1){
keyboard.text=prefix+"Keyboard"
controller.text=prefix+"{color `yellow`}Controller"}}
if(global.language=LANGUAGE.SCHINESE){
if(choice=0){
keyboard.text=prefix+"{color `yellow`}键盘"
controller.text=prefix+"手柄"}
if(choice=1){
keyboard.text=prefix+"键盘"
controller.text=prefix+"{color `yellow`}手柄"}}}

if((Input_IsPressed(INPUT.CONFIRM)||input_check("confirm"))&&temp!=1){
	instance_destroy(title)
	instance_destroy(keyboard)
	instance_destroy(controller)
	temp=1
	audio_play_sound(snd_menu_confirm,0,0)
	alarm[0]=60
}