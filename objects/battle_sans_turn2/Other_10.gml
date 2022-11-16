Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}our reports showed a&massive anomaly in the&timespace continuum.{pause}{clear}{titr_face 3}timeline jumping left&and right, stopping&and starting."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}我们的报告显示&在时空连续区中&出现了大量异常。{pause}{clear}{titr_face 3}时间线左右跳动, &旋至重启。"
}