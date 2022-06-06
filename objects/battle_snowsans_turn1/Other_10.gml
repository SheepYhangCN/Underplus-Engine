Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{voice 3}{titr_face 1}are you still dreaming to&hit me?{pause}{clear}{titr_face 3}heh..{sleep 10}{titr_face 4}&it's impossible."
}else if(global.language=1){
_dialog.text="{font 4}{voice 3}{speed 5}{titr_face 1}你还妄想着能打中我？{pause}{clear}{titr_face 3}呵..{sleep 10}{titr_face 4}&那是不可能的。"
}