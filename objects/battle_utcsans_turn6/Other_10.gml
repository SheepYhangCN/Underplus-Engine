Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}now,{sleep 15}&everyone was pushed to&the position where&asgore used to be,{pause}{clear}everyone's change of&opinion is enough to shake&the whole situation.{pause}{clear}{utcsans_face 0}that's why, {sleep 15}&i am standing here, {sleep 10}&to stop you."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}现在, {sleep 15}&所有人都被推到了&曾经asgore的位置, {sleep 10}&每个人意见的改变&都足以撼动全局。{pause}{clear}{utcsans_face 0}也正因如此, {sleep 15}&我才会站在这里, {sleep 10}阻止你。"
}