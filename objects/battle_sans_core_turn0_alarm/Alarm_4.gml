Battle_SetState(BATTLE_STATE.RESULT)
Battle_SetNextState(BATTLE_STATE.RESULT)
instance_destroy(battle_button_fight)
audio_play_sound(snd_level_up,0,0)
Player_SetLv(14)
Player_SetHp(Player_GetHpMax())
if(global.language=LANGUAGE.ENGLISH){
Battle_SetDialog("{font 0}* You WON!&* You earned {font 1}114514{font 0} EXP and 0 GOLD.{sleep 15}&* Your LOVE increased.")}
if(global.language=LANGUAGE.SCHINESE){
Battle_SetDialog("{font 0}* 你赢了!&* 你获得了 114514 EXP 和 0 金钱。{sleep 15}&* 你的 LOVE 提升了。")}
Fader_Fade(0,1,30,240)
alarm[5]=280