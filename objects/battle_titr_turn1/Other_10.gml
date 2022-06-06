Battle_SetTurnInfo(BATTLE_TURN.TIME,200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

if(global.language=0){
Battle_SetMenuDialog("* Rain falls.")}
if(global.language=1){
Battle_SetMenuDialog("* 雨水飘落。")}

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}you know it,{sleep 20}&i won't take that hit so&easily."
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}你知道的，{sleep 20}&我不会站在那乖乖挨打。"
}