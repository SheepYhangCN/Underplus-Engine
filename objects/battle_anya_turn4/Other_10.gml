Battle_SetTurnInfo(BATTLE_TURN.TIME,756)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,32)
board=Battle_CreateBoardExtraCircle(battle_board.x,battle_board.y,80)
Battle_SetSoul(battle_soul_red)

/*_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}you can't feel that way.{pause}{clear}watching your relatives&turn into dust&again and again,{sleep 25}{titr_face 4}{color `red`}&AND YOU CAN'T&DO ANYTHING."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}你体会不到这种感觉。{pause}{clear}亲眼看着自己的亲人&一次次化为尘埃, {sleep 25}{titr_face 4}{color `red`}&而你却什么都不能做。"
}