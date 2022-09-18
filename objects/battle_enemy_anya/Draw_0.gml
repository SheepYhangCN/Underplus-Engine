if(hint>0){
draw_set_color(c_white)
draw_set_font(font_sans)
if(global.language=LANGUAGE.ENGLISH){
draw_text(10,10,"Now playing: 心照不宣 by PikaLcu_靓")}
if(global.language=LANGUAGE.SCHINESE){
draw_text(10,10,"现在正在播放：心照不宣 by PikaLcu_靓")}
hint-=1}