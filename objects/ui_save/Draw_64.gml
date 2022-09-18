if(_state==0||_state==1){
	if(_state==0){var color=c_white}
	if(_state==1){var color=c_yellow}
	draw_sprite_ext(spr_pixel,0,108-80,118,424+80,174,0,c_white,1);
	draw_sprite_ext(spr_pixel,0,108+6,118+6,424-6*2,174-6*2,0,c_black,1);
	draw_sprite_ext(spr_pixel,0,108+6-80,118+6,80-6,174-6*2,0,c_black,1);
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	if(global.language=LANGUAGE.ENGLISH){
	draw_set_font(font_menu)
	draw_text_transformed_color(108-80+43,118+7,"Slot",2,2,0,color,color,color,color,1)}
	if(global.language=LANGUAGE.SCHINESE){
	draw_set_font(font_chinese)
	draw_text_transformed_color(108-80+43,118+8,"槽位",2,2,0,color,color,color,color,1)}
	draw_set_font(font_dialog)
	draw_text_transformed_color(108-80+25,118+95,"<     >",2,2,90,color,color,color,color,1)
	draw_text_transformed_color(108-80+43,118+75,string(_slot)+"/9",2,2,0,color,color,color,color,1)
	draw_set_halign(fa_left)
}

if(_state==0){
	if(_choice==0){
		draw_sprite(spr_battle_soul_red,0,108+6+37,118+6+131);
	}else{
		draw_sprite(spr_battle_soul_red,0,108+6+217,118+6+131);
	}
}