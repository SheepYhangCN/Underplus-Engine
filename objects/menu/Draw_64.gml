if(_menu==0){
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(font_crypt_of_tomorrow);
	draw_set_color(c_gray);
	draw_text_transformed(320,476,GAME_NAME+" "+GAME_VERSION+" By "+GAME_AUTHOR+"\nUndertale (C) Toby Fox 2015-2019\nUNDERTALE Engine "+ENGINE_VERSION+" By TML",2,2,0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}

if(_menu==1){
	draw_set_color(c_white);
	draw_set_font(font_menu);
	draw_text_transformed(280,110,_naming_name,2,2,0);
	//draw_text_transformed(230,180,_naming_name,4,4,0);
	//draw_text_transformed(230,190,"______",4,4,0);
}

if(_menu==2||_menu==3){
	draw_set_color(c_white);
	draw_set_font(font_menu);
	draw_text_transformed(_confirm_name_x+_confirm_name_offset_x,_confirm_name_y+_confirm_name_offset_y,_naming_name,_confirm_name_scale,_confirm_name_scale,_confirm_name_angle);
}