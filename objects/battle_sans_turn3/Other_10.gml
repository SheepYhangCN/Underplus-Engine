Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}until suddenly,{sleep 15}&everything ends."
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}直到刹那，&{sleep 15}一切归为零点。"
}