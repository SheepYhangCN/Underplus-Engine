Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

audio_sound_gain(loop_rain,0,30)
if(audio_sound_get_gain(loop_rain)<=0){audio_stop_sound(loop_rain)}
battle_enemy_warma.alarm[4]=-1
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
inst.text="{skippable false}{speed 4}...{sleep 30}{warma_face 1}&welcome back!{pause}{alarm `battle_warma_turn_spared` 0 1}{sleep 1145141919}"
}
if(global.language=LANGUAGE.SCHINESE){
inst.text="{skippable false}{speed 8}...{sleep 30}{warma_face 1}&欢迎回来!{pause}{alarm `battle_warma_turn_spared` 0 1}{sleep 1145141919}"
}