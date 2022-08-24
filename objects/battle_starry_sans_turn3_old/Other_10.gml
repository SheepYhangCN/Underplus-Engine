Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 3}you caused the time-space&disorder right?{pause}{clear}heh, &{sleep 15}{starry_face 4}that's so&un\"bone\"lievable."
}else if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 3}时空错乱是你引起的吧？{pause}{clear}呵{sleep 15}{starry_face 4} 那可真让骨难以置信。"
}