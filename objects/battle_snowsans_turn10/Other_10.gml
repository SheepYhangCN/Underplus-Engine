Battle_SetTurnInfo(BATTLE_TURN.TIME,720)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{titr_face 4}you will never meet him.{pause}{clear}i will stop you here.{pause}{clear}your stupid journey must&to be end."
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 4}你不会再见到他了。{pause}{clear}我会在这里阻止你。{pause}{clear}你那愚蠢的旅途必须&结束了。"
}