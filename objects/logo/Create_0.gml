_hint=false;
alarm[0]=1;
Dialog_Clear()
x=room_width/2
y=room_height/2

audio_play_sound(snd_logo,0,false);
if(current_weekday=4){
if(global.language=0){
CC_Add("Today is KFC Crazy Thursday!",120)}
if(global.language=1){
CC_Add("今天可是肯德基疯狂星期四啊!V我50",120)}
}