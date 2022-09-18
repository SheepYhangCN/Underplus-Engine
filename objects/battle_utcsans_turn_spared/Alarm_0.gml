battle_enemy_utcsans.x=114514
battle_enemy_utcsans.headx=114514
battle_enemy_utcsans.bodyx=114514
battle_enemy_utcsans.legx=114514
fader.alpha=0
Battle_SetState(BATTLE_STATE.RESULT)
if(global.language=LANGUAGE.ENGLISH){
Battle_SetDialog("{font 0}* You WON!&* You earned 0 EXP and 0 GOLD.")}
if(global.language=LANGUAGE.SCHINESE){
Battle_SetDialog("{font 0}* 你赢了!&* 你获得了 0 EXP 和 0 金钱。")}
Fader_Fade(0,1,30,120)
alarm[1]=160