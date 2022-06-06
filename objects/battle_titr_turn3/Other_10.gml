Battle_SetTurnInfo(BATTLE_TURN.TIME,200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}hehehe......{pause}{clear}you did it all,{sleep 15}&didn't you?"
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}呵呵呵......{pause}{clear}这些都是你造成的，{sleep 15}&不是吗？"
}