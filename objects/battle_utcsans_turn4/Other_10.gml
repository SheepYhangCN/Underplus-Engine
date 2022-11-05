Battle_SetTurnInfo(BATTLE_TURN.TIME,600)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,32)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,32)
board=Battle_CreateBoardExtraCircle(battle_board.x,battle_board.y,80)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}i know,{sleep 15}{utcsans_face 1}&along the way,{sleep 10}&you always be friendly.{pause}{clear}{utcsans_face 3}your stand is clear at a&glance.{sleep 15}{utcsans_face 3}&your arrival will bring peace&to the whole monster&kingdom...{pause}{clear}{utcsans_face 4}that's why i am&standing here.{pause}{clear}{utcsans_face 3}only by killing you,{sleep 15}{utcsans_face 0}&can we have chance to&wage a war with human."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}我懂的，{sleep 15}{utcsans_face 1}&你一路走来，{sleep 10}&始终心怀善意。{pause}{clear}{utcsans_face 3}你的立场一目了然。{sleep 15}{utcsans_face 3}&你的到来会让整个&怪物王国倒向和平...{pause}{clear}{utcsans_face 4}这也正是我&站在这里的意义。{pause}{clear}{utcsans_face 3}只有杀了你，{sleep 15}{utcsans_face 0}&我们才有机会向人类开战。"
}