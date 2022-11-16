if(global.language=LANGUAGE.ENGLISH){Battle_SetMenuDialog("* Rain dropped,{sleep 15}&  Warma is sparing you.")}
if(global.language=LANGUAGE.SCHINESE){Battle_SetMenuDialog("* 雨滴落下, {sleep 15}&  沃玛正在饶恕你。")}
Battle_SetEnemySpareable(1,true)
audio_play_sound(loop_rain,0,1)
battle_enemy_warma.alarm[4]=1
event_inherited();