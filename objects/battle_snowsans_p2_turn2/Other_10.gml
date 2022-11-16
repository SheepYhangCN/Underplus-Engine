Battle_SetTurnInfo(BATTLE_TURN.TIME,700)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 3}{titr_face 3}you know what?{sleep 35}{titr_face 1}&i don't expect anything&anymore{pause}{clear}{titr_face 3}you reset again and again,{sleep 15}&gave me the hope of mercy,{pause}{clear}{titr_face 4}and then there were&genocides over and over."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 3}你知道吗?{sleep 35}{titr_face 1}&我已经不再奢望什么了{pause}{clear}{titr_face 3}你一次次的重置, {sleep 15}&给了我仁慈的希望{pause}{clear}{titr_face 4}然后便是一遍遍的屠杀。"
}