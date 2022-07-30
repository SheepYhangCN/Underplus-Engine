//draw_set_font(font_mars_needs_cunnilingus);
//draw_set_color(c_white);
//draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
//draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

//draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
//draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),1);

//draw_text(x+245+Player_GetHpMax()*1.25+14,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));

draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);
draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHp()*1.25,21,0,make_color_rgb(255,255,0),1);

if(global.kr=true){
    draw_sprite_ext(spr_pixel, 0, ((x + 245) + ((Player_GetHp() * 1.25) * 1)), (y - 1), ((Player_GetKR() * 1.25) * 1), 21, 0, make_color_rgb(255, 0, 255), 1)
    if (Player_GetKR() > 0)
        color = make_color_rgb(255, 0, 255)
    else
        color = c_white
    draw_set_color(color)
    draw_text_ext_transformed_color((((x + 245) + ((Player_GetHpMax() * 1.25) * 1)) + 14), y, ((("    " + string(((Player_GetHp() * 1) + (Player_GetKR() * 1)))) + " / ") + string((Player_GetHpMax() * 1))), -1, -1, 1, 1, 0, color, color, color, color, 1)
	if(global.mode=0){
    draw_sprite_ext(spr_battle_ui_kr, 0, (((x + 245) + ((Player_GetHpMax() * 1.25) * 1)) + 10), (y + 4), 1, 1, 0, color, 1)
	}else if(global.mode=2){
    draw_sprite_ext(spr_battle_ui_krplus, 0, (((x + 245) + ((Player_GetHpMax() * 1.25) * 1)) + 10), (y + 4), 1, 1, 0, color, 1)
	}else if(global.mode=1){
    draw_sprite_ext(spr_battle_ui_krminu, 0, (((x + 245) + ((Player_GetHpMax() * 1.25) * 1)) + 10), (y + 4), 1, 1, 0, color, 1)}
}else if(global.kr=false){
draw_text(x+245+Player_GetHpMax()*1.25+14,y,string(Player_GetHp())+" / "+string(Player_GetHpMax()));}

	if(global.shield=true){
		draw_sprite_ext(spr_pixel,0,x+245,y-1+21,Player_GetHpMax()*1.25,5,0,make_color_rgb(192,0,0),1);
        if(global.shield_useable == true){
		draw_sprite_ext(spr_pixel,0,x+245,y-1+21,(Player_GetHpMax()*1.25)/120*global.shieldval,5,0,c_lime,1);
		}else{
		draw_sprite_ext(spr_pixel,0,x+245,y-1+21,(Player_GetHpMax()*1.25)/120*global.shieldval,5,0,make_color_rgb(255,255,255),1);}
		/*if(global.kr=1){
        if(global.shield_useable == 1)
        {
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 150), y, 80, 21, 0, make_color_rgb(192, 0, 0), 1)
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 150), y, (global.shieldval / 1.5), 21, 0, make_color_rgb(0, 100, 0), 1)
        }
        else
        {
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 150), y, 80, 21, 0, make_color_rgb(192, 0, 0), 1)
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 150), y, (global.shieldval / 1.5), 21, 0, make_color_rgb(255, 255, 255), 1)
        }}else{
        if(global.shield_useable == 1)
        {
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 130), y, 80, 21, 0, make_color_rgb(192, 0, 0), 1)
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 130), y, (global.shieldval / 1.5), 21, 0, make_color_rgb(0, 100, 0), 1)
        }
        else
        {
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 130), y, 80, 21, 0, make_color_rgb(192, 0, 0), 1)
            draw_sprite_ext(spr_pixel, 0, (((x + 245) + (Player_GetHpMax() * 1.25)) + 130), y, (global.shieldval / 1.5), 21, 0, make_color_rgb(255, 255, 255), 1)
        }}*/
        if((!keyboard_check(ord("C"))) || global.shield_useable == false)
        {
            if(global.shieldval < 120){
			if(global.mode=0){
                global.shieldval += 1.5}
			if(global.mode=1){
                global.shieldval += 2}
			if(global.mode=2){
                global.shieldval += 1}
			}
			global.shielding=false
        }
        if(keyboard_check(ord("C")) && global.shield_useable == true && global.shieldval > 0)
        {
			if(global.mode=0){
            global.shieldval -= 2}
			if(global.mode=1){
            global.shieldval -= 1}
			if(global.mode=2){
            global.shieldval -= 3}
            global.shielding = true
        }
        if(global.shieldval > 120){
            global.shieldval = 120}
        if(global.shieldval < 0){
            global.shieldval = 0}
    }