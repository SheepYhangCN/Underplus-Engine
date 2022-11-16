draw_set_valign(fa_middle)
draw_set_halign(fa_center)

//rainbow+=1
//draw_set_color(make_color_hsv((rainbow % 255), 255, 255))
draw_set_color(c_white)

//框
if(enabled){
draw_sprite_ext(spr_pixel,0,102,108,430,210,0,c_white,1)
}else{
draw_sprite_ext(spr_pixel,0,102,108,430,210,0,c_gray,1)}
draw_sprite_ext(spr_pixel,0,102+6,108+6,430-6-6,210-6-6,0,c_black,1)

//主draw控制
if(global.language=LANGUAGE.ENGLISH){
draw_set_font(font_menu)}
if(global.language=LANGUAGE.SCHINESE){
draw_set_font(font_chs)}
switch choice{
case -1:
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,430,"Use Up and Down arrow keys to switch game",2,2,0)}
if(global.language=LANGUAGE.ENGLISH){game="Minigame"}
if(global.language=LANGUAGE.SCHINESE){draw_text_scribble(320,435,"[font_chs][scale,2]使用上下方向键切换游戏")}
if(global.language=LANGUAGE.SCHINESE){game="[font_chs]小游戏"}
if(phase=0){
draw_sprite_ext(spr_blaster,0,320-3,300-7,3,3,-90,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | 3 Minute GB Fan Fight"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | 3[font_chs]分钟大风车耐力战"}
}
break
case 0:
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,430,"Use Up and Down arrow keys to switch phase",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_scribble(320,435,"[font_chs][scale,2]使用上下方向键切换阶段")}
if(global.language=LANGUAGE.ENGLISH){game="Undertale : Snowdin Encounter | Sans Fight"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog]Undertale:[font_chs]雪镇之遇[font_dialog] | Sans[font_chs]战"}
switch phase{
case 0:
draw_sprite_ext(spr_bg_fog,0,320-3,220-7,418/160,198/80,0,c_white,1)
draw_sprite_ext(spr_char_frisk_right,0,320-120,260,2,2,0,c_black,1)
draw_sprite_ext(spr_sans_black,0,320+120-10,260,2,2,0,c_black,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Intro"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]开头"}
break
case 1:
//draw_sprite_ext(spr_battle_bg_snowdin,0,102+6,108+6,418/639,198/253,0,c_white,1)
draw_sprite_ext(spr_sans_leg,0,325-2,220+53,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,0,325-3,220+8,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_face,3,325-3,220-35,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Phase 1"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]第[font_dialog]1[font_chs]阶段"}
break
case 2:
//draw_sprite_ext(spr_battle_bg_snowdin,0,102+6,108+6,418/639,198/253,0,c_white,1)
draw_sprite_ext(spr_sans_leg,0,325-2,220+53,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,0,325-3,220+8,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_blue_eyes,0,325-3,220-35,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_sweat,0,325-3,220-35,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Phase 2"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]第[font_dialog]2[font_chs]阶段"}
break
}
break
case 1:
draw_sprite_ext(spr_anya_legs,0,318,220+65,2,2,0,c_white,1)
draw_sprite_ext(spr_anya_body,0,318,220+15,2,2,0,c_white,1)
if(phase=0){
draw_sprite_ext(spr_anya_face,0,318+2,220-30,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="Anya Forger Fight"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog]Anya Forger[font_chs]战"}
}
if(phase=1){
draw_sprite_ext(spr_anya_face,4,318+2,220-30,2,2,0,c_white,1)
draw_sprite_ext(spr_peanut_blaster,0,318-150,220-80,2,2,90,c_white,1)
draw_sprite_ext(spr_peanut_blaster,0,318+150,220-80,2,2,90,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="Anya think she is dt2"}
if(global.language=LANGUAGE.SCHINESE){game="[font_chs]阿尼亚觉得她是[font_dialog]dt2"}
}
break
case 2:
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,430,"Use Up and Down arrow keys to switch phase",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_scribble(320,435,"[font_chs][scale,2]使用上下方向键切换阶段")}
if(global.language=LANGUAGE.ENGLISH){game="[Cancelled] Classic! Sans Fight Remake"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog][[[font_chs]已弃坑[font_dialog]][font_chs]原版[font_dialog]Sans[font_chs]战重制"}
switch phase{
case 0:
draw_sprite_ext(spr_bg_sanscorridor_full_cut,0,320-3,220-7,418/480,198/240,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Corridor"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]长廊"}
break
case 1:
draw_sprite_ext(spr_sans_leg,0,325-2,220+53,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,0,325-3,220+8,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_face,3,325-3,220-35,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Phase 1"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]第[font_dialog]1[font_chs]阶段"}
break
case 2:
draw_sprite_ext(spr_sans_leg,0,325-2,220+53,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body,0,325-3,220+8,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_blue_eyes,0,325-3,220-35,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_sweat,0,325-3,220-35,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game+=" | Phase 2"}
if(global.language=LANGUAGE.SCHINESE){game+="[font_dialog] | [font_chs]第[font_dialog]2[font_chs]阶段"}
break
}
break
case 3:
draw_sprite_ext(spr_utcsans_leg,0,325-2,220+53,2,2,0,c_white,1)
draw_sprite_ext(spr_utcsans_body,0,325-3,220-2,2,2,0,c_white,1)
draw_sprite_ext(spr_utcsans_face,0,325-3,220-60,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="Undertale: Candid | Sans Fight"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog]Undertale: Candid | Sans[font_chs]战"}
break
case 4:
draw_sprite_ext(spr_starry_sans_legs,0,320,220+60,2,2,0,c_white,1)
draw_sprite_ext(spr_starry_sans_body,0,320,220+10,2,2,0,c_white,1)
draw_sprite_ext(spr_starry_sans_face,0,320,220-30,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="[Cancalled] StarryTale | Sans Fight"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog][[[font_chs]已弃坑[font_dialog]][font_chs]星空传说[font_dialog]StarryTale | Sans[font_chs]战"}
break
case 5:
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,430,"Use Up and Down arrow keys to switch phase",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_scribble(320,435,"[font_chs][scale,2]使用上下方向键切换阶段")}
draw_sprite_ext(spr_sponge_legs,0,320,220+60,2,2,0,c_white,1)
draw_sprite_ext(spr_sponge_face,0,320,220-25,2,2,0,c_white,1)
draw_sprite_ext(spr_sponge_body,0,320,220+23,2,2,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){
    game="Spongeswap | Spongebob Fight"
    game+=" | Phase "+string(phase+1)}
if(global.language=LANGUAGE.SCHINESE){
    game="[font_dialog]Spongeswap | Spongebob [font_chs]战"
    game+="[font_dialog] | [font_chs]第[font_dialog]"+string(phase+1)+"[font_chs]阶段"}
break
case 6:
draw_sprite_ext(spr_shift_sans_intro,0,320,240,1,1,0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="[Cancalled] Undershift | Sans Fight"}
if(global.language=LANGUAGE.SCHINESE){game="[font_dialog][[[font_chs]已弃坑[font_dialog]]Undershift | Sans[font_chs]战"}
break
case 7:
draw_sprite_ext(spr_warma_muahuabian,0,320+5-2,240-92+30,2/11*(4/5),2/11*(4/5),0,c_white,1)
draw_sprite_ext(spr_warma_legs,0,320,240+35,1/9*(4/5),1/9*(4/5),0,c_white,1)
draw_sprite_ext(spr_warma_body,0,320-2,240-30,1/9*(4/5),1/9*(4/5),0,c_white,1)
draw_sprite_ext(spr_warma_face,0,320+5,240-92,1/9*(4/5),1/9*(4/5),0,c_white,1)
if(global.language=LANGUAGE.ENGLISH){game="Warmtale | Warma Fight | Phase 1"}
if(global.language=LANGUAGE.SCHINESE){game="[font_chs]温暖传说[font_dialog]Warmtale | [font_chs]沃玛战[font_dialog] | [font_chs]第[font_dialog]1[font_chs]阶段"}
break
}
if(global.language=LANGUAGE.ENGLISH){
    draw_text_transformed(320,40,(current_hour<12&&current_hour>=6 ? "Good morning, " : "")+(current_hour=12 ? "Good noon,  " : "")+(current_hour>12&&current_hour<=16 ? "Good afternoon,  " : "")+(current_hour>16&&current_hour<=20 ? "Good evening,  " : "")+(current_hour>20&&current_hour<=23 ? "Good night,  " : "")+(current_hour>=0&&current_hour<=3 ? "Good midnight,  " : "")+(current_hour>3&&current_hour<=5 ? "Good dawn,  " : "")+Player_GetName()+"!\n[< & > - Switch Game][X/Shift - Quit][C/Ctrl - Shop]",2,2,0)
    draw_text_transformed(320,370,game,2,2,0)}
if(global.language=LANGUAGE.SCHINESE){
    draw_text_scribble(320,45,"[font_chs][scale,2]"+(current_hour<12&&current_hour>=6 ? "早上好, " : "")+(current_hour=12 ? "中午好, " : "")+(current_hour>12&&current_hour<=16 ? "下午好, " : "")+(current_hour>16&&current_hour<=20 ? "傍晚好, " : "")+(current_hour>20&&current_hour<=23 ? "晚上好, " : "")+(current_hour>=0&&current_hour<=3 ? "午夜好, " : "")+(current_hour>3&&current_hour<=5 ? "凌晨好, " : "")+"[font_dialog]"+Player_GetName()+"!\n[[[font_chs]←[font_dialog]&[font_chs]→[font_dialog]-[font_chs]切换游戏[font_dialog]][[X/Shift-[font_chs]退出[font_dialog]][[C/Ctrl-[font_chs]商店[font_dialog]]")
    draw_text_scribble(320,375,"[scale,2]"+game)}
if(enabled){
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,400,"Press Z or Enter to start",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_scribble(320,405,"[scale,2][font_chs]按下[font_dialog]Z[font_chs]或[font_dialog]Enter[font_chs]来开始")}
}else{
draw_set_color(warning_color)
if(global.language=LANGUAGE.ENGLISH){draw_text_transformed(320,400,"Not available yet",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){draw_text_transformed(320,405,"暂不可用",2,2,0)}
draw_set_color(c_white)}


draw_set_font(font_menu)
//小游戏/战斗 提示
if(global.language=LANGUAGE.ENGLISH){
if(choice=0){
draw_set_halign(fa_left)
draw_text_transformed(15,340,"<- Minigames",2,2,0)
draw_set_halign(fa_center)}
if(choice=-1){
draw_set_halign(fa_right)
draw_text_transformed(room_width-15,340,"Battles ->",2,2,0)
draw_set_halign(fa_center)}}
if(global.language=LANGUAGE.SCHINESE){
if(choice=0){
draw_set_halign(fa_left)
draw_text_scribble(15,345,"[scale,2]<- [font_chs]小游戏",)
draw_set_halign(fa_center)}
if(choice=-1){
draw_set_halign(fa_right)
draw_text_scribble(room_width-15,345,"[scale,2][font_chs]战斗[font_menu] ->")
draw_set_halign(fa_center)}}
//左右箭头
if(choice>choice_min){
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
if(global.language=LANGUAGE.ENGLISH){
draw_set_font(font_menu)
draw_text_transformed(0,room_height,string(current_year)+"-"+(current_month<10 ? "0" : "")+string(current_month)+"-"+(current_day<10 ? "0" : "")+string(current_day)+" ("+GetWeekday()+")",2,2,0)}
if(global.language=LANGUAGE.SCHINESE){
draw_text_scribble(0,room_height,"[font_dialog][scale,2]"+string(current_year)+"-"+(current_month<10 ? "0" : "")+string(current_month)+"-"+(current_day<10 ? "0" : "")+string(current_day)+" ([font_chs]"+GetWeekday()+"[font_dialog])")}
draw_set_font(font_menu)

draw_set_valign(fa_top)
draw_set_halign(fa_left)
