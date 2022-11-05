_hint=false;
alarm[0]=1;
Dialog_Clear()
x=room_width/2
y=room_height/2

audio_play_sound(snd_logo,0,false);
if(current_weekday=4){
if(global.language=LANGUAGE.ENGLISH){
CC_Add("Today is KFC Crazy Thursday!",120)}
if(global.language=LANGUAGE.SCHINESE){
CC_Add("今天可是肯德基疯狂星期四啊!V我50",120)}
}
if(current_month=9&&current_day=15){
if(global.language=LANGUAGE.ENGLISH){
CC_Add("Happy "+string(current_year-2015)+"th anniversary for Undertale!",120)}
if(global.language=LANGUAGE.SCHINESE){
CC_Add("Undertale "+string(current_year-2015)+"周年快乐!",120)}
}
if(current_month=10&&current_day=31){
if(global.language=LANGUAGE.ENGLISH){
CC_Add("Happy "+string(current_year-2018)+"th anniversary for Deltarune!",120)}
if(global.language=LANGUAGE.SCHINESE){
CC_Add("Deltarune "+string(current_year-2018)+"周年快乐!",120)}
}