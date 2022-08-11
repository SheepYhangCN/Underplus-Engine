Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,54)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,54)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}A lot of times I wonder,{sleep 15}&whether what we have done&is valuable or not.{pause}{clear}{utcsans_face 0}The light in our hearts,{sleep 15}&has dragged us into a new&sorrow."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}很多时候我都在思考，{sleep 15}&我们所做的一切到底&有没有价值。{pause}{clear}{utcsans_face 0}心心念念的光明，{sleep 15}&却将我们拖入了新的悲哀。"
}