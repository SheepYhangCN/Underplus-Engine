audio_play_sound(bgm_warma,0,1)
battle_enemy_warma.alarm[2]=1
if(global.language=LANGUAGE.ENGLISH){Battle_SetMenuDialog("* She just standing there.")}
if(global.language=LANGUAGE.SCHINESE){Battle_SetMenuDialog("* 她就站在那里。")}
event_inherited()