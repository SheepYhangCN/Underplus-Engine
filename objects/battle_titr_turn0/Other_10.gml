Battle_SetTurnInfo(BATTLE_TURN.TIME,1290)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}{titr_face 3}it's raining outside.{pause}{clear}{titr_face 1}birds are crying,{sleep 20}&flowers are withering.{pause}{clear}{titr_face 0}on day like this,{sleep 20}&{titr_face 3}monsters like me,{pause}{clear}{font 2}{titr_face 4}can't afford not to care&anymore."
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}{titr_face 3}外面大雨哗哗。{pause}{clear}{titr_face 1}鸟儿在哭泣，{sleep 20}&花儿在凋谢。{pause}{clear}{titr_face 0}在这样的一天里，{sleep 20}&{titr_face 3}像我这样的怪物，{pause}{clear}{font 3}{scale 1.4}{titr_face 4}再也不能视而不见了。"
}