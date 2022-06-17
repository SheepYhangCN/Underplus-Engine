Battle_SetTurnInfo(BATTLE_TURN.TIME,880)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,32)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}{titr_face 3}your repeating genocide,{sleep 15}{titr_face 4}&and repeating reset,{sleep 15}&repeating suffer us."
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}{titr_face 3}你那一次次的屠杀，{sleep 15}{titr_face 4}&而又一次次的重置，{sleep 15}&重复着的折磨。"
}