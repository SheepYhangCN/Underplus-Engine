Battle_SetTurnInfo(BATTLE_TURN.TIME,960)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}so, {sleep 15}&if you are sensible, {sleep 20}&{color `red`}{titr_face 4}just go to hell."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}所以说, {sleep 15}&如果你识相的话, {sleep 20}&{color `red`}{titr_face 4}就赶紧去死吧。"
}