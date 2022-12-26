Battle_SetTurnInfo(BATTLE_TURN.TIME,840)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)
Anim_Create(obj_effect_water,"height",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,235,60)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice VOICE.SPONGE}{sponge_face 3}Timeline jumping&left and right,{sleep 15}&stopping and&starting..."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice VOICE.SPONGE}{sponge_face 3}时间线左右跳动, {sleep 15}&旋至重启..."
}