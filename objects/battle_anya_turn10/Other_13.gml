if(global.language=LANGUAGE.ENGLISH){
Battle_SetMenuDialog("* Time to end.")}
if(global.language=LANGUAGE.SCHINESE){
Battle_SetMenuDialog("* 是时候结束了。")}
Battle_SetEnemySpareable(1,true)
Battle_SetSoul(battle_soul_red)
audio_sound_gain(bgm_anya,0.5,500)
event_inherited();