Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}IT'S ME{sleep 15}&SANNESSSSSSSSSS{pause}{clear}DO YOU WANNA &HAVE A BAD TOM?"
}else if(global.language=1){
_dialog.text="{font 5}{scale 1}是我{sleep 15}{font 4}&SANNESSSSSSSSSS{pause}{clear}{font 5}你是不是想来&一段{font 4}BAD TOM?"
}