Battle_SetTurnInfo(BATTLE_TURN.TIME,672)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,70)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}you know,{sleep 15}{utcsans_face 1}&i always hate responsibility.{sleep 15}{utcsans_face 3}&but who can do anything&about it.{pause}{clear}maybe in a corner of a&timeline,{sleep 15}&\"i\" also have to shoulder&this responsibility."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}你知道，{sleep 15}{utcsans_face 1}&我向来讨厌负责。{sleep 15}{utcsans_face 3}&可谁又有什么办法呢。{pause}{clear}或许在某个时空的角落里，{sleep 15}&“我”也不得不负起这种&责任。"
}