Battle_SetTurnInfo(BATTLE_TURN.TIME,960)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}do you remember that,{sleep 15}{titr_face 1}&my{color `red`}\"special attack\"{pause}{clear}{color `black`}{titr_face 3}but i seems failed at last.{pause}{clear}so,{sleep 15}&live this turn,{sleep 15}{titr_face 4}&i will show you my&\"cool normal attack\""
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}你还记得吧, {sleep 15}{titr_face 1}&我的{color `red`}“特殊攻击”{pause}{clear}{color `black`}{titr_face 3}不过最后似乎失败了。{pause}{clear}所以, {sleep 15}&活过这回合, {sleep 15}{titr_face 4}&我就让你见识下我那&“炫酷的普通攻击”"
}