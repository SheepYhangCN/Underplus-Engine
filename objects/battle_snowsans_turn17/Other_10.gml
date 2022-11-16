Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 3}{titr_face 3}heh,&{sleep 15}{titr_face 4}as expected.{pause}{clear}then i have to make&some hard."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 3}呵, &{sleep 15}{titr_face 4}不出所料。{pause}{clear}那我只能来硬的了。"
}