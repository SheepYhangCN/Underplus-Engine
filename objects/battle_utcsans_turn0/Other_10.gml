Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

timer=0
_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}meet again, {sleep 15}huh.{pause}{clear}{utcsans_face 4}hope this is not&the last time."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}再一次见面, {sleep 15}对吧。{pause}{clear}{utcsans_face 4}希望这不是最后一次。"
}