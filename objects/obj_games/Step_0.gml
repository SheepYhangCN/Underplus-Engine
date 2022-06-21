/*if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
BGM_Play(0,bgm_menu_summer,true,1,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
BGM_Play(0,bgm_menu_winter,true,1,1)}*/
if(!audio_is_playing(bgm_sansdate)){
BGM_Play(0,bgm_sansdate,true,1,1)}

if(global.language=0){
window_set_caption(GAME_NAME+" - Games Selection")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 游戏选择")
}

if(warning_countdown>-1){
warning_countdown-=1}
if(warning_countdown=0){
warning_color=c_white}
if(warning_countdown>0){
warning_color=c_red}

/*a=instance_create_depth(random(room_width+10), 0, depth, season_effect)
a.image_xscale=1
a.image_yscale=1
a.alarm[0]=-1
a.alarm[1]=1*/
//按键
if(temp=0){
if(Input_IsPressed(INPUT.LEFT)&&choice>0){
choice-=1
audio_play_sound(snd_menu_switch,0,0)}

if(Input_IsPressed(INPUT.RIGHT)&&choice<choice_max){
choice+=1
audio_play_sound(snd_menu_switch,0,0)}

if(Input_IsPressed(INPUT.UP)&&phase>0){
phase-=1
audio_play_sound(snd_menu_switch,0,0)}

if(Input_IsPressed(INPUT.DOWN)&&phase<phases){
phase+=1
audio_play_sound(snd_menu_switch,0,0)}

if(Input_IsPressed(INPUT.CONFIRM)){
if(enabled){
temp=1
audio_play_sound(snd_menu_confirm,0,0)
fader.color=c_black
fader.alpha=0
Anim_Create(fader,"alpha",0,0,0,1,20)
alarm[0]=21
}else{
audio_play_sound(snd_hurt,0,0)
warning_countdown=40}
}

if(Input_IsPressed(INPUT.CANCEL)){
temp=1
quit=1
fader.color=c_black
fader.alpha=0
Anim_Create(fader,"alpha",0,0,0,1,20)
alarm[0]=21
}
if(Input_IsPressed(INPUT.MENU)){
temp=1
_shop=1
fader.color=c_black
fader.alpha=0
Anim_Create(fader,"alpha",0,0,0,1,20)
alarm[0]=21
}
}
//阶段选择
if(phase>phases){
phase=phases}
if(phase<0){
phase=0}

switch choice{
default:
phases=0
enabled=true
break
case 0:
phases=0
enabled=true
break
case 1:
phases=2
enabled=true
if(phase=2){
enabled=false}
break
}
