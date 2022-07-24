Battle_SetTurnInfo(BATTLE_TURN.TIME,960)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
lastet_dir=0

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}but this time,{sleep 15}&things become different.{pause}{clear}{titr_face 3}this time,{sleep 15}&{titr_face 4}i didn't forget anything."
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}但这次，{sleep 15}&情况变得不同了。{pause}{clear}{titr_face 3}这次，{sleep 15}&{titr_face 4}我没有忘记任何事。"
}