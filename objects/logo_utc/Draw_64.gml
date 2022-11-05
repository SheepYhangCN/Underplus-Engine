if(_hint){
	draw_set_font(font_mars_needs_cunnilingus);
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	if(global.language=LANGUAGE.ENGLISH){
	draw_text_scribble(320,360,"[scale,1][font_mars_needs_cunnilingus][[Press Z or Enter]\n[[Press C or Ctrl for settings]")
	}else if(global.language=LANGUAGE.SCHINESE){
	draw_text_scribble(320,360,"[scale,2][font_dialog][[[font_chinese]按下 [font_dialog]Z[font_chinese] 或 [font_dialog]Enter]\n[[[font_chinese]按下 [font_dialog]C[font_chinese] 或 [font_dialog]Ctrl [font_chinese]打开设置[font_dialog]]")}
	draw_set_halign(fa_left);
}