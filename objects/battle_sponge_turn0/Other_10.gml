Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 8}It's a beautiful day&outside...{pause}{clear}{sponge_face 3}Seaweeds are shaking,{sleep 15}&Jellyfishs are swimming...{pause}{clear}On day like this,{sleep 15}{sponge_face 1}&Planktons like you...{pause}{clear}{skippable false}{black_cut 20}{sponge_face 4}{sleep 20}{skippable true}{font 2}{color `red`}Should spend the rest&of life in the closet&of the Flying Dutchman."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 8}今天是多么美好的&一天啊...{pause}{clear}{sponge_face 3}海藻在飘摇, {sleep 15}&水母在游弋...{pause}{clear}在这样的一天里, {sleep 15}{sponge_face 1}&像你这样的浮游生物...{pause}{clear}{skippable false}{black_cut 20}{sponge_face 4}{sleep 20}{skippable true}{font 2}{color `red`}应当在飞行荷兰人的柜子&里度过余生。"
}