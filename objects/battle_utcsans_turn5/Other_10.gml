Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,100)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,100)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}but...{sleep 15}&although the war started,{sleep 10}&the future of monsters&is still hazzy.{pause}{clear}{utcsans_face 1}even me don't believe that&monsters have a chance to&win."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 3}但是...{sleep 15}&即使开战了，{sleep 10}&怪物的未来也&仍旧是一片迷茫。{pause}{clear}{utcsans_face 1}就连我自己都不相信&怪物有十足的胜算。"
}