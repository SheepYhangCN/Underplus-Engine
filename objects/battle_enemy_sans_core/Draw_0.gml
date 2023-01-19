draw_sprite_ext(spr_sans_leg,_legs,legx,legy,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,_body,bodyx,bodyy,2,2,0,c_white,1)
draw_sprite_ext(_face_spr,_face,headx,heady,2,2,0,c_white,1)
if(sweat>0){
draw_sprite_ext(spr_sans_sweat,sweat-1,headx,heady,2,2,0,c_white,1)}

if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text(10,10,"Song By sprins\nBackground from Storyshift: the Core Encounter\n按下C跳过开头")}
if(global.language=LANGUAGE.SCHINESE){
draw_text(10,10,"曲子By sprins\n背景图来自Storyshift: the Core Encounter\n按下C跳过开头")}
hint-=1}