if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text(10,10,"Now playing: MEGALOVANIA Smash Bro ver. by Toby Fox")}
if(global.language=LANGUAGE.SCHINESE){
draw_text(10,10,"现在正在播放：MEGALOVANIA Smash Bro ver. by Toby Fox")}
hint-=1}