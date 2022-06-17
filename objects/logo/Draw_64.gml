//draw_sprite_ext(spr_logo,0,320,240,2,2,0,c_white,1);
if(_hint){
	draw_set_halign(fa_middle);
	draw_set_color(c_gray);
	//if(os_type=os_android||os_type=os_ios||os_type=os_winphone){
	//if(global.language=0){
	//draw_set_font(font_menu)
	//draw_text_ext_transformed(320,360,"[Click screen right edge - Phase 1]\n\n[Click screen right half - Phase 2]\n\n[Click screen down - Settings]",9,-1,2,2,0)}
	//if(global.language=1){
	//draw_set_font(font_chinese)
	//draw_text_ext_transformed(320,360,"[单击屏幕右边缘 - 1阶段]\n\n[单击屏幕右半 - 2阶段]\n\n[单击屏幕下方 - 设置]",9,-1,2,2,0)}
	//}else{
	//if(global.language=0){
	//draw_set_font(font_menu)
	//draw_text_ext_transformed(320,360,"[Enter - Phase 1]\n\n[Shift - Phase 2]\n\n[C/Ctrl - Settings]",9,-1,2,2,0)}
	//if(global.language=1){
	//draw_set_font(font_chinese)
	//draw_text_ext_transformed(320,360,"[回车 - 1阶段]\n\n[Shift - 2阶段]\n\n[C/Ctrl - 设置]",9,-1,2,2,0)}}
	if(global.language=0){
	draw_set_font(font_menu)
	draw_text_ext_transformed(320,365,"[Press Z or Enter]",9,-1,2,2,0)}
	if(global.language=1){
	draw_set_font(font_fzxs12_18)
	draw_text_ext_transformed(320,365,"[按下 Z 或 Enter]",9,-1,1,1,0)}
	draw_set_halign(fa_left);
}