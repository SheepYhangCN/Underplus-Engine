Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 4}Why are you as stubborn&as a plankton?{pause}{sponge_face 3}&Oh right, {sleep 15}&You are a plankton.{pause}{clear}Then, {sleep 15}Survive this turn,{sleep 15}{sponge_face 4}&I will show you my&special attack."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 4}你怎么像浮游生物一样&顽强？{pause}{sponge_face 3}&哦对，{sleep 15}你就是浮游生物。{pause}{clear}那么，{sleep 15}活过这回合，{sleep 15}{sponge_face 4}&就让你见识见识我的&特殊攻击。"
}
soullock=false
_dir=45
_dir1=-45