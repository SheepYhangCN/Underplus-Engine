Battle_SetTurnInfo(BATTLE_TURN.TIME,200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

if(global.language=0){
Battle_SetMenuDialog("* Rain falls on your face, {sleep 15}it&  makes you hard open your eyes.")}
if(global.language=1){
Battle_SetMenuDialog("* 雨水拍在脸上，{sleep 15}让你难以睁开眼睛。")}

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}our report shows a large&number of...{sleep 15}{clear}{titr_face 1}whatever,just that,{sleep 15}&you probably heard it&millions of times."
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}我们的报告显示&在时空连续区中...{sleep 15}{clear}{titr_face 1}算了，就那些，{sleep 15}&你肯定都听过无数次了。"
}