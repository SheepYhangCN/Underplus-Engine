Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 1}what?&{sleep 15}you think i'm just gonna &stand there and take it?"
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 1}蛤？&{sleep 15}你觉得我会乖乖&站在那接刀吗？"
}