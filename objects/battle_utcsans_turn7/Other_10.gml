Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

if(global.mode=GAME_MODE.HARD){var a=32}else{var a=40}
board1=Battle_CreateBoardCover(battle_board.x-64,battle_board.x+64,a,a,32,32,0)
board2=Battle_CreateBoardCover(battle_board.x+64,battle_board.x+64,a,a,32,32,0)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}after all,{sleep 15}{utcsans_face 1}&whether it is war or not,{sleep 10}{utcsans_face 0}&the future of monsters&is not optimistic."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}说到底, {sleep 15}{utcsans_face 1}&无论是战还是忍, {sleep 10}{utcsans_face 0}&怪物的未来都不容乐观。"
}