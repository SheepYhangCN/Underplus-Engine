Battle_SetEnemySpareable(1,true)
audio_sound_gain(bgm_utcsans,0.5,500)
if(global.language=0){
Battle_SetMenuDialog("* At last, we came to this point.")}
if(global.language=1){
Battle_SetMenuDialog("* 最终还是走到了这一步。")}
battle_enemy_utcsans._face=3
event_inherited();