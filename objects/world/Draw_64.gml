if(global.mode=2){
	if(room=room_gameover){}else{
		draw_set_color(c_red)
		if(global.language=0){
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text(500,15,"HARD Mode")
		}else if(global.language=1){
		draw_set_font(font_chinese)
		draw_text_transformed(520,15,"困难模式",2,2,0)}
}}
if(global.mode=1){
	if(room=room_gameover){}else{
		draw_set_color(c_lime)
		if(global.language=0){
		draw_set_font(font_mars_needs_cunnilingus)
		draw_text(500,15,"Easy Mode")
		}else if(global.language=1){
		draw_set_font(font_chinese)
		draw_text_transformed(520,15,"简单模式",2,2,0)}
}}
if(global.tas=true){
	draw_set_halign(fa_right)
	draw_set_color(c_orange)
	if(global.language=0){
	draw_set_font(font_menu)
	if(global.mode!=0){var tempy=40}else{var tempy=15}
	draw_text_transformed(620,tempy,"Tas Mode\n(Speed: "+string(room_speed/60)+"x)",2,2,0)
	}else if(global.language=1){
	draw_set_font(font_fzxs12_18)
	if(global.mode!=0){var tempy=45}else{var tempy=15}
	draw_text(620,tempy,"变速模式\n(速度："+string(room_speed/60)+"x)")}
	draw_set_halign(fa_left)
	draw_set_color(c_red)
	if(global.language=0){
	draw_set_font(font_menu)
	draw_text(0,0,"Warning! Tas mode is a experimental feature!\nMight cause some problems!")}
	if(global.language=1){
	draw_set_font(font_chinese)
	draw_text(0,0,"警告！变速模式是一个实验性功能！\n可能会引起某些问题！")}
}
if(keyboard_check(vk_escape)&&!instance_exists(char_player)){
if(global.language=0){
draw_set_font(font_menu)
if(quitting_timer=0){
quitting_text="Quitting"}}
if(global.language=1){
draw_set_font(font_chinese)
if(quitting_timer=0){
quitting_text="退出中"}}
draw_set_color(c_white)
if(quitting_timer>=0){
quitting_timer+=1}
if(quitting_timer=60||quitting_timer=100||quitting_timer=160){
quitting_text+="."}
if(quitting_timer>=180){
game_end()}
//if(global.language=0){
//draw_text_transformed(0,0,quitting_text,1,1,0)}
//if(global.language=1){
draw_text_transformed(0,0,quitting_text,2,2,0)//}
}else{
quitting_timer=0}