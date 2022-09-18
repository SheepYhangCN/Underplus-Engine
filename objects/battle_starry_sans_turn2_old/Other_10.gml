Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,80)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,80)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 3}don't think i don't know&what did you do.{pause}{clear}the sins you committed,{sleep 15}&{starry_face 4}your bloody hands..."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 3}你别以为你做的事情&我都不知道。{pause}{clear}你所犯下的罪孽，{sleep 15}&{starry_face 4}你那双沾满鲜血的手..."
}