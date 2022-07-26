Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{starry_face 3}it's terrible day outside.{pause}{clear}{starry_face 1}dust flying in the sky,{sleep 20}&the smell of killing&flying in the air.{pause}{clear}{starry_face 0}if i guessed right,&isn't it all your fault?{pause}{clear}on day like this,{sleep 20}&{starry_face 3}humans like you,{pause}{clear}{skippable false}{black_cut 20}{starry_face 4}{sleep 20}{skippable true}{font 2}{voice -1}SHOULD BE TORN TO&PIECES IN THE SPACE."
}else if(global.language=1){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}{starry_face 3}今天是多么糟糕的一天，{pause}{clear}{starry_face 1}尘埃漫天飞舞，{sleep 20}&杀戮的气息在空中弥漫。{pause}{clear}{starry_face 0}如果没猜错这一切&都是你的过错吧？{pause}{clear}在这样的一天里，{sleep 20}&{starry_face 3}像你这样的人类，{pause}{clear}{skippable false}{black_cut 20}{starry_face 4}{sleep 20}{skippable true}{font 2}{scale 1.4}{voice -1}{color `red`}应 当 在 宇 宙 中&被 撕 的 粉 碎。"
}