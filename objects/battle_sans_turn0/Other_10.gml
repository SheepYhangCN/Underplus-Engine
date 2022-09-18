Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

BGM_Play(0,bgm_bird,1)
_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}it's beautiful day outside.{pause}{clear}{titr_face 1}birds are singing,{sleep 20}&flowers are blooming.{pause}{clear}{titr_face 0}on day like this,{sleep 20}&{titr_face 3}kids like you,{pause}{clear}{skippable false}{black_cut 20}{titr_face 4}{audio_stop `bgm_bird`}{sleep 20}{skippable true}{font 2}{voice -1}should be burning in hell."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}今日多么美好。{pause}{clear}{titr_face 1}鸟儿歌唱，{sleep 20}&花儿绽放。{pause}{clear}{titr_face 0}在日子如此，{sleep 20}&{titr_face 3}小鬼如你，{pause}{clear}{skippable false}{black_cut 20}{titr_face 4}{audio_stop `bgm_bird`}{sleep 20}{skippable true}{font 2}{voice -1}应当焚身于&地狱烈火之中。"
}
if(global.mode=GAME_MODE.HARD){gbscale=2.6}else{gbscale=2}