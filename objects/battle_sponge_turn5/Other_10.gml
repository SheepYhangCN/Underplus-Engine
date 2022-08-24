Battle_SetTurnInfo(BATTLE_TURN.TIME,960)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 8}You know this huh."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 8}关于这点你心知肚明。"
}