Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)
/*
_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}of course,{sleep 15} &we both know who cause it."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}当然, {sleep 15}&我们都知道是谁造成的。"
}