Battle_SetTurnInfo(BATTLE_TURN.TIME,700)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,70)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)
/*
_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 3}{titr_face 3}heh,{sleep 15}&what's the point of&telling you these{pause}{clear}you just like a zombie{sleep 15}&only genocide in your eyes."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 3}呵, {sleep 15}&我和你说这些有&什么意义呢{pause}{clear}你就像具行尸走肉一般{sleep 15}&眼里只有屠杀。"
}