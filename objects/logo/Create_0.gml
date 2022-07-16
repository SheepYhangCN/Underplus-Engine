_hint=false;
//alarm[0]=200;
alarm[0]=1;
Dialog_Clear()
x=room_width/2
y=room_height/2

//event_user(global.language)

//audio_stop_sound(bgm_menu_spring_autumn)
//audio_stop_sound(bgm_menu_summer)
//audio_stop_sound(bgm_menu_winter)
/*if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
BGM_Play(0,bgm_menu_summer,true,1,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
BGM_Play(0,bgm_menu_winter,true,1,1)}*/

audio_play_sound(snd_logo,0,false);
//Dialog_Start()
//ui_dialog._top=true
if(current_weekday=4){
if(global.language=0){
CC_Add("Today is KFC Crazy Thursday!",120)}
if(global.language=1){
CC_Add("今天可是肯德基疯狂星期四啊！V我50",120)}
}