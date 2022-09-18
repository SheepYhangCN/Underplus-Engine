Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,283)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,283)
titr_body.image_index=1
battle_enemy_snowsans_p2.alarm[2]=-1

_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 2}won't you really think&i will{sleep 10}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 2}你不会真以为我会{sleep 10}{end}"
}