Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)
Anim_Create(obj_effect_water,"height",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,235,60)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 4}Honestly, {sleep 15}&I was dreamed&that you can go back.{pause}{clear}{sponge_face 3}Of course,{sleep 15}&it can only be a dream."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 4}说实话，{sleep 15}&我本来还幻想着&你能回头的。{pause}{clear}{sponge_face 3}当然那也只能是幻想了。"
}