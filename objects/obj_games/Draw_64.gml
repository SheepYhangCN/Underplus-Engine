draw_set_valign(fa_middle)
draw_set_halign(fa_center)

//rainbow+=1
//draw_set_color(make_color_hsv((rainbow % 255), 255, 255))
draw_set_color(c_white)

//框
draw_sprite_ext(spr_pixel,0,102,108,430,210,0,c_white,1)
draw_sprite_ext(spr_pixel,0,102+6,108+6,430-6-6,210-6-6,0,c_black,1)

if(global.language=0){
draw_set_font(font_menu)
switch choice{
case 0:
draw_text_transformed(320,430,"Use Up and Down arrow keys to switch phase",2,2,0)
game="Undertale : Snowdin Encounter | Sans Fight"
switch phase{
case 0:
game+=" | Intro"
break
case 1:
game+=" | Phase 1"
break
case 2:
game+=" | Phase 2"
break
}
break
case 1:
game="Undertale : Tears in the rain | Sans Fight"
switch phase{
case 0:
game+=" | Phase 1"
break
}
break
case 2:
game="Ink!Sans Fight | Phase 4"
break
}
draw_text_transformed(320,40,(current_hour<12&&current_hour>=6 ? "Good morning, " : "")+(current_hour=12 ? "Good noon,  " : "")+(current_hour>12&&current_hour<=16 ? "Good afternoon,  " : "")+(current_hour>16&&current_hour<=20 ? "Good evening,  " : "")+(current_hour>20&&current_hour<=23 ? "Good night,  " : "")+(current_hour>0&&current_hour<=3 ? "Good midnight,  " : "")+(current_hour>3&&current_hour<=5 ? "Good dawn,  " : "")+Player_GetName()+"!\n[< & > - Switch Game][X/Shift -Quit][C/Ctrl - Shop]",2,2,0)
draw_text_transformed(320,370,game,2,2,0)
if(enabled){
draw_text_transformed(320,400,"Press Z or Enter to start",2,2,0)
}else{
draw_set_color(warning_color)
draw_text_transformed(320,400,"Not available yet",2,2,0)
draw_set_color(c_white)}
}
if(global.language=1){
draw_set_font(font_fzxs12_18)
switch choice{
case 0:
draw_text(320,435,"使用上下方向键切换阶段")
game="Undertale:雪镇之遇 | Sans战"
switch phase{
case 0:
game+=" | 开头"
break
case 1:
game+=" | 第1阶段"
break
case 2:
game+=" | 第2阶段"
break
}
break
case 1:
game="Undertale:雨中泪 | Sans战"
switch phase{
case 0:
game+=" | 第1阶段"
break
}
break
case 2:
game="Ink!Sans战 | 第4阶段"
break
}
draw_text(320,45,(current_hour<12&&current_hour>=6 ? "早上好，" : "")+(current_hour=12 ? "中午好，" : "")+(current_hour>12&&current_hour<=16 ? "下午好，" : "")+(current_hour>16&&current_hour<=20 ? "傍晚好，" : "")+(current_hour>20&&current_hour<=23 ? "晚上好，" : "")+(current_hour>0&&current_hour<=3 ? "午夜好，" : "")+(current_hour>3&&current_hour<=5 ? "凌晨好，" : "")+Player_GetName()+"！\n[←&→-切换游戏][X/Shift-退出][C/Ctrl-商店]")
draw_text(320,375,game)
if(enabled){
draw_text(320,405,"按下Z或Enter来开始")
}else{
draw_set_color(warning_color)
draw_text(320,405,"暂不可用")
draw_set_color(c_white)}
}

draw_set_font(font_menu)
//左右箭头
if(choice>0){
draw_set_color(c_white)
}else{
draw_set_color(c_gray)}
draw_text_transformed(80,room_height/2-30,"<",5,5,0)
if(choice<choice_max){
draw_set_color(c_white)
}else{
draw_set_color(c_gray)}
draw_text_transformed(room_width-80,room_height/2-30,">",5,5,0)
//上下箭头
if(phases>0){
if(phase>0){
draw_set_color(c_white)
}else{
draw_set_color(c_gray)}
draw_text_transformed(room_width/2-6,90,">",5,5,90)
if(phase<phases){
draw_set_color(c_white)
}else{
draw_set_color(c_gray)}
draw_text_transformed(room_width/2-6,340,"<",5,5,90)
}

draw_set_color(c_white)
//日期时间作者版本
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_text_transformed(0,0,GAME_VERSION,2,2,0)
draw_set_halign(fa_right)
//draw_text_transformed(room_width,0,"By "+GAME_AUTHOR,2,2,0)
draw_set_valign(fa_bottom)
draw_text_transformed(room_width,room_height,(current_hour<10 ? "0" : "")+string(current_hour)+":"+(current_minute<10 ? "0" : "")+string(current_minute)+":"+(current_second<10 ? "0" : "")+string(current_second),2,2,0)
draw_set_halign(fa_left)
if(global.language=0){
draw_set_font(font_menu)
draw_text_transformed(0,room_height,string(current_year)+"-"+(current_month<10 ? "0" : "")+string(current_month)+"-"+(current_day<10 ? "0" : "")+string(current_day)+" ("+GetWeekday()+")",2,2,0)}
if(global.language=1){
draw_set_font(font_fzxs12_18)
draw_text(0,room_height+5,string(current_year)+"-"+(current_month<10 ? "0" : "")+string(current_month)+"-"+(current_day<10 ? "0" : "")+string(current_day)+"（"+GetWeekday()+"）")}
draw_set_font(font_menu)

draw_set_valign(fa_top)
draw_set_halign(fa_left)
