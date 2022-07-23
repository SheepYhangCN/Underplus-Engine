Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

if(Battle_GetMenuChoiceButton()=0){
_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 0}i saw it,{sleep 15}&dont want to hit me!"
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 0}我看出来啦，{sleep 15}&你别想击中我!"
}}