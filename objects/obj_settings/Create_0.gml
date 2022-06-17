//audio_stop_sound(bgm_menu_spring_autumn)
//audio_stop_sound(bgm_menu_summer)
//audio_stop_sound(bgm_menu_winter)
if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
BGM_Play(0,bgm_menu_summer,true,1,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
BGM_Play(0,bgm_menu_winter,true,1,1)}

a=instance_create_depth(random_range(79,81),random_range(359,361),0,text_typer)
alarm[0]=1

_sin=0

prefix = "{gui true}{instant true}{shadow false}{font 1}{scale 2}"
choice=1
window_size_text=""
window_size=1
fullscreen=-1
fullscreen_text=""
border_var=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)
border_text=""
mode_val=global.mode
modetext=""
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
if(Border_IsEnabled()=false){
if(window_get_width()=640){
window_size=1}
if(window_get_width()=960){
window_size=1.5}
if(window_get_width()=1280){
window_size=2}
}
if(window_get_fullscreen()=false){
fullscreen=1}
if(window_get_fullscreen()=true){
fullscreen=2}
}

title = noone
language = noone
language_index = noone
size = noone
size_index = noone
fullscreen_obj=noone
fullscreen_obj_index=noone
mode=noone
mode_index=noone
volume=noone
border_obj=noone
border_obj_index=noone
backtext=noone

event_user(0)