if(global.language=LANGUAGE.ENGLISH){Battle_SetMenuDialog("* Warma is sparing you.")}
if(global.language=LANGUAGE.SCHINESE){Battle_SetMenuDialog("* 沃玛正在饶恕你。")}
Battle_SetEnemySpareable(1,true)
audio_play_sound(bgm_warmtale_menu,0,1)
//battle_enemy_warma.alarm[4]=1
event_inherited();