Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,100)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,100)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 4}are you a lunatic?{pause}{clear}{titr_face 3}or, {sleep 15}&{titr_face 1}you have no family?"
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 4}你是个疯子吗？{pause}{clear}{titr_face 3}还是说，{sleep 15}&{titr_face 1}你其实没有家人？"
}