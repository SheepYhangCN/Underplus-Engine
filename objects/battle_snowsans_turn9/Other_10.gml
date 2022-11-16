Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,160)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,160)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}anyways, {sleep 15}&{titr_face 0}i told papyrus to give up the&plan that blocking you in&snowdin,{pause}{clear}and left with my message&in advance."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}不管怎样, {sleep 15}&{titr_face 0}我让papyrus放弃了在&snowdin阻挡你的计划, {pause}{clear}并提前带着我的口信&离开了。"
}