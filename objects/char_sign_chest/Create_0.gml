event_inherited();

var spd=1/3;
res_idle_speed[0]=spd;
res_idle_speed[90]=spd;
res_idle_speed[180]=spd;
res_idle_speed[270]=spd;

res_move_speed[0]=spd;
res_move_speed[90]=spd;
res_move_speed[180]=spd;
res_move_speed[270]=spd;

res_talk_speed[0]=spd;
res_talk_speed[90]=spd;
res_talk_speed[180]=spd;
res_talk_speed[270]=spd;

if(global.language=LANGUAGE.ENGLISH){
text="* (This is a chest. ){sleep 15}&* (Do you want to use it? ){sleep 15}{ui_choice 2}{ui_choice1 `Yes`}{ui_choice2 `No`}{pause}{choice_box}{end}"}
if(global.language=LANGUAGE.SCHINESE){
text="* (这是个箱子。){sleep 15}&* (你要使用吗? ){sleep 15}{ui_font `font_chinese`}{ui_choice 2}{ui_choice1 `是`}{ui_choice2 `否`}{pause}{choice_box}{end}"}