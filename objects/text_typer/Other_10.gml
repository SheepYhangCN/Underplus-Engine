///@desc New Char
var font=0;

if(ord(_char)<128){
	font=0;
}else{
	font=1
}

if(_font=3&&ord(_char)<128&&enemy_dialog=false){
	_font_temp=0
}else if(_font=3&&ord(_char)<128&&enemy_dialog=true){
	_font_temp=2
}else{
	_font_temp=_font
}

if(_char!=" "&&_char!="　"){
	draw_set_font(_group_font[_font_temp,0]);
	var H1=string_height(" ");
	draw_set_font(_group_font[_font_temp,font]);
	var H2=string_height(" ");
	var OFFSET=(H1-H2)/2*_scale_y;
	
	var INST=instance_create_depth(x+_char_x,y+_char_y+OFFSET,depth,text_single);
	INST.font=_group_font[_font_temp,font]
	INST.scale_x=_scale_x*_group_font_scale_x[_font_temp,font]
	INST.scale_y=_scale_y*_group_font_scale_y[_font_temp,font]
	INST.text=_char;
	INST.angle=_angle;
	INST.shadow=_shadow;
	INST.outline=_outline;
	INST.color_text[0]=_color_text[0];
	INST.color_text[1]=_color_text[1];
	INST.color_text[2]=_color_text[2];
	INST.color_text[3]=_color_text[3];
	INST.color_shadow[0]=_color_shadow[0];
	INST.color_shadow[1]=_color_shadow[1];
	INST.color_shadow[2]=_color_shadow[2];
	INST.color_shadow[3]=_color_shadow[3];
	INST.color_outline[0]=_color_outline[0];
	INST.color_outline[1]=_color_outline[1];
	INST.color_outline[2]=_color_outline[2];
	INST.color_outline[3]=_color_outline[3];
	INST.shadow_x=_shadow_x;
	INST.shadow_y=_shadow_y;
	INST.alpha=_alpha;
	INST.alpha_text=_alpha_text;
	INST.alpha_shadow=_alpha_shadow;
	INST.alpha_outline=_alpha_outline;
	INST.effect=_effect;
	INST.gui=_gui;
	if(sprite_exists(_char_sprite)){
		INST.sprite=_char_sprite;
		INST.sprite_image=_char_sprite_image;
		INST.x+=sprite_get_xoffset(_char_sprite)*_scale_x;
		INST.y+=sprite_get_yoffset(_char_sprite)*_scale_y;
	}
	ds_list_add(_list_inst,INST);
	
	if(!_voice_played&&!_skipping&&!_instant&&_voice>=0){
		var sound=-1;
		if(_voice_single>=0&&_voice_single<array_length_2d(_group_voice,_voice)){
			sound=_group_voice[_voice,_voice_single];
		}else{
			sound=_group_voice[_voice,irandom(array_length_2d(_group_voice,_voice)-1)];
		}
		if(audio_exists(sound)){
			audio_stop_sound(sound);
			audio_play_sound(sound,0,false);
			_voice_played=true;
		}
	}
}

draw_set_font(_group_font[_font_temp,font]);
_char_x+=((sprite_exists(_char_sprite) ? sprite_get_width(_char_sprite) : string_width(_char))+_group_font_space_x[_font_temp,font]+_space_x)*_group_font_scale_x[_font_temp,font]*_scale_x;

if(width<_char_x){
	width=_char_x;
}