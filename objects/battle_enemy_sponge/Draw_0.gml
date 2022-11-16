draw_sprite_ext(spr_sponge_legs,_legs,legx,legy,2,2,0,c_white,1)
draw_sprite_ext(_face_spr,_face,headx,heady,2,2,0,c_white,1)
draw_sprite_ext(spr_sponge_body,_body,bodyx,bodyy,2,2,0,c_white,1)

if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text(10,10,"Now playing: Hell Or High Water by LucasPucas")}
if(global.language=LANGUAGE.SCHINESE){
draw_text(10,10,"现在正在播放: [深水地狱]Hell Or High Water by LucasPucas")}
hint-=1}