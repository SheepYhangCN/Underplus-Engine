if(_hint){
	draw_set_font(font_mars_needs_cunnilingus);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	if(global.language=0){
	draw_text_scribble(320,360,"[scale,1][font_mars_needs_cunnilingus][[Press Z or Enter]\n[[Press X for Credits]\n[[Press C for Settings]")
	}else if(global.language=1){
	draw_text_scribble(320,360,"[scale,2][font_menu][[[font_chinese]按下 [font_menu]Z[font_chinese] 或 [font_menu]Enter]\n[[[font_chinese]按下 [font_menu]X[font_chinese] 查看制作名单[font_menu]]\n[[[font_chinese]按下 [font_menu]C[font_chinese] 打开设置[font_menu]]")}
	draw_set_halign(fa_left);
}