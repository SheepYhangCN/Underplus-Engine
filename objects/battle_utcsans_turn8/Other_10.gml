Battle_SetTurnInfo(BATTLE_TURN.TIME,700)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}that's why,{sleep 15}&i will replace the pun joke&with \"determination of&fighting\",{sleep 20}{utcsans_face 0} to support me to&continue escaping."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}所以，{sleep 15}&我才要用“主战的决心”&替代双关笑话，{sleep 20}{utcsans_face 0}&支撑着我继续逃避。"
}