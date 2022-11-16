Battle_SetTurnInfo(BATTLE_TURN.TIME,640)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,128)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,128)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 3}in the repeating genocide,{sleep 15}{titr_face 4}&i've seen my brother turn&to dust,&{sleep 15}over and over."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 3}在这一次次的屠杀中, {sleep 15}{titr_face 4}&我一次次亲眼看着&我的兄弟化为尘埃。"
}