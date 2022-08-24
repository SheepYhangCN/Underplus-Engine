Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 8}{sponge_face 3}Our report shows that&something wrong happened&in the timespace&continuum."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 8}{sponge_face 3}我们的报告显示&时空连续区出现了异常。"
}