draw_set_halign(fa_left)
draw_set_valign(fa_top)
if(global.mode=GAME_MODE.HARD){
	if(room=room_gameover){}else{
		draw_set_color(c_red)
		if(global.language=LANGUAGE.ENGLISH){
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text(500,15,"HARD Mode")
		}else if(global.language=LANGUAGE.SCHINESE){
		draw_set_font(font_chs)
		draw_text_transformed(520,15,"困难模式",2,2,0)}
}}
if(global.mode=GAME_MODE.EASY){
	if(room=room_gameover){}else{
		draw_set_color(c_lime)
		if(global.language=LANGUAGE.ENGLISH){
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text(500,15,"Easy Mode")
		}else if(global.language=LANGUAGE.SCHINESE){
		draw_set_font(font_chs)
		draw_text_transformed(520,15,"简单模式",2,2,0)}
}}
if(global.tas=true){
	draw_set_halign(fa_right)
	draw_set_color(c_orange)
	if(global.language=LANGUAGE.ENGLISH){
	draw_set_font(font_menu)
	if(global.mode!=0){var tempy=40}else{var tempy=15}
	draw_text_transformed(620,tempy,"Tas Mode\n(Speed: "+string(room_speed/60)+"x/"+string(room_speed)+"fps)",2,2,0)
	}else if(global.language=LANGUAGE.SCHINESE){
	if(global.mode!=0){var tempy=45}else{var tempy=15}
	draw_text_scribble(620,tempy,"[scale,2][font_chs]变速模式\n[font_dialog]([font_chs]速度: [font_dialog]"+string(room_speed/60)+"x/"+string(room_speed)+"fps)")}
	draw_set_halign(fa_left)
	draw_set_color(c_white)
	if(global.language=LANGUAGE.ENGLISH){
	draw_set_font(font_menu)
	draw_text_scribble(0,0,"[c_red]Warning! Tas mode is a experimental feature!\nMight cause some problems!\n\n[c_orange]Left Alt - Decrease FPS\nRight Alt - Increase FPS")}
	if(global.language=LANGUAGE.SCHINESE){
	draw_set_font(font_chs)
	draw_text_scribble(0,0,"[c_red]警告[font_dialog]! [font_chs]变速模式是一个实验性功能[font_dialog]! [font_chs]\n可能会引起某些问题[font_dialog]! [font_chs]\n\n[c_orange]左[font_dialog]Alt - [font_chs]减少[font_dialog]FPS[font_chs]\n右[font_dialog]Alt - [font_chs]增加[font_dialog]FPS")}
}
if(global.vape){draw_sprite_ext(spr_vape,0,0,0,0.25,0.25,0,c_white,1)}
if(keyboard_check(vk_escape)&&!instance_exists(char_player)){
if(global.language=LANGUAGE.ENGLISH){
draw_set_font(font_menu)
if(quitting_timer=0){
quitting_text="Quitting"}}
if(global.language=LANGUAGE.SCHINESE){
draw_set_font(font_chs)
if(quitting_timer=0){
quitting_text="退出中"}}
draw_set_color(c_white)
if(quitting_timer>=0){
quitting_timer+=1}
if(quitting_timer=60||quitting_timer=100||quitting_timer=160){
quitting_text+="."}
if(quitting_timer>=180){
game_end()}
//if(global.language=LANGUAGE.ENGLISH){
//draw_text_transformed(0,0,quitting_text,1,1,0)}
//if(global.language=LANGUAGE.SCHINESE){
draw_text_transformed(0,0,quitting_text,2,2,0)//}
}else{
quitting_timer=0}