Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}after all...{sleep 20}{utcsans_face 1}&i am too lazy,{sleep 20}{utcsans_face 0}&that i dont want&to face the reality."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}说到底...{sleep 20}{utcsans_face 1}&还是我太懒了，{sleep 20}{utcsans_face 0}&懒到不愿面对现实。"
}