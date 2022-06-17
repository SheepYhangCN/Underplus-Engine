Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,48)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,48)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}{titr_face 3}i don't have such a long&time to spend with you"
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}{titr_face 3}我可没有这么长的&时间和你耗下去。"
}
