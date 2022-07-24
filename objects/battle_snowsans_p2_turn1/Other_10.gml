Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{voice 3}{titr_face 1}honestly,{sleep 15}at first i dreamed&we could be friends.{pause}{clear}{titr_face 3}now, {sleep 15}{titr_face 4}&it seems just a dream."
}else if(global.language=1){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 1}说实话，{sleep 15}我一开始还幻想&着能和你成为朋友{pause}{clear}{titr_face 3}现在看来，{sleep 15}{titr_face 4}&不过是痴人说梦。"
}