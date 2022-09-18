Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 3}Heh,&{sleep 15}as expected.{pause}{clear}Then,{sleep 15}{sponge_face 4}&Welcome to&Hell Of High Water."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 3}呵，&{sleep 15}不出所料。{pause}{clear}那么，{sleep 15}{sponge_face 4}&欢迎来到深水地狱。"
}