Battle_SetTurnInfo(BATTLE_TURN.TIME,960)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
lastet_dir=0

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 8}{sponge_face 3}Until suddenly,&{sleep 15}everything ends."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 8}{sponge_face 3}直到刹那，&{sleep 15}一切戛然而止。"
}