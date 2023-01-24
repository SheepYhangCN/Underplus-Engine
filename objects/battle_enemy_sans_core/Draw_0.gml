draw_sprite_ext(legspr,_legs,legx,legy,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,_body,bodyx,bodyy,2,2,0,c_white,1)
draw_sprite_ext(_face_spr,_face,headx,heady,2,2,0,c_white,1)
if(sweat>0){
draw_sprite_ext(spr_sans_sweat,sweat-1,headx,heady,2,2,0,c_white,1)}

if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text(10,10,"Press C to skip intro"+(global.mode!=GAME_MODE.HARD ? "\nPress Space to heal" : ""))}
if(global.language=LANGUAGE.SCHINESE){
draw_text(10,10,"按下C跳过开头"+(global.mode!=GAME_MODE.HARD ? "\n按下空格吃药" : ""))}
hint-=1}

if(item_used_hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text_transformed(10,10,"Item used:"+string(item_used),2,2,0)}
if(global.language=LANGUAGE.SCHINESE){
draw_text_transformed(10,10,"已吃药数:"+string(item_used),2,2,0)}
item_used_hint-=1}