Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}after all...{sleep 15}{utcsans_face 0}&this time is different.{pause}{clear}{utcsans_face 3}every decision we make&will affect our future.{sleep 15}{utcsans_face 4}&it also makes it difficult&for me to act irresponsibly."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}毕竟...{sleep 15}{utcsans_face 0}&这一次可不同以往{pause}{clear}{utcsans_face 3}我们所做的每一个决定&都会左右我们的未来{sleep 15}{utcsans_face 4}&这也令我难以做出&不负责任的行为。"
}