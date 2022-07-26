Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 1}what?&{sleep 15}you really think that i would&stand there and take your hit?{pause}{clear}{starry_face 3}heh, it's impossible."
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{starry_face 1}怎么？&{sleep 15}你真以为我会站在那&承受你的刀子？{pause}{clear}{starry_face 3}呵 不可能！"
}