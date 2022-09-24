if(bar_visible&&damage>0){
	draw_sprite_ext(spr_pixel,0,xstart-bar_width/2,ystart+15,bar_width,13,0,c_dkgray,1);
	draw_sprite_ext(spr_pixel,0,xstart-bar_width/2,ystart+15,bar_width/bar_hp_max*_bar_hp,13,0,c_lime,1);
}

if(damage<-5 || damage=BATTLE_DAMAGE.MISS){
	draw_sprite_ext(spr_battle_damage_miss,0,xstart,y-60,1,1,0,c_gray,1);
}else if(damage=BATTLE_DAMAGE.BLOCK){
	draw_sprite_ext(spr_battle_damage_block,0,xstart,y-60,1,1,0,c_gray,1);
}else if(damage=BATTLE_DAMAGE.NO_EFFECT){
	draw_sprite_ext(spr_battle_damage_no_effect,0,xstart,y-60,1,1,0,c_gray,1);
}else if(damage=BATTLE_DAMAGE.PARRY){
	draw_sprite_ext(spr_battle_damage_parry,0,xstart,y-60,1,1,0,c_gray,1);
}else if(damage=BATTLE_DAMAGE.NONE){}else{
	var STR=string(damage);
	var LEN=string_length(STR);
	var SPR_W=sprite_get_width(spr_battle_damage);
	var draw_x=x;
	
	if(LEN%2!=0){
		draw_x-=(LEN-1)*((SPR_W+1)/2);
	}else{
		draw_x-=((SPR_W)/2)+(LEN/2-1)*(SPR_W+1);
	}
	var proc=1;
	repeat(LEN){
		draw_sprite_ext(spr_battle_damage,real(string_char_at(STR,proc)),draw_x,y,1,1,0,color,1);
		draw_x+=SPR_W+1;
		proc+=1;
	}
}