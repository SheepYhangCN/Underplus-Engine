Battle_SetTurnInfo(BATTLE_TURN.TIME,1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
audio_pause_sound(bgm_snowsans)
titr_head.sweat=2

_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{voice 3}{titr_face 3}uh, wait, kid.{pause}{clear}wait, let me catch my&breath. {pause}{clear}{titr_face 1}ok, {sleep 15}uh, {sleep 15}is such that,{pause}{clear}you see, {sleep 15}your journey is&only halfway there. {pause}{clear}{titr_face 2}it's not too late to&come back now. {pause}{clear}{titr_face 1}you can just press the&spare button that you&never touched,{pause}{clear}{titr_face 3}and we can,&{sleep 15}{titr_face 0}continue being friends,&i guess? {pause}{clear}{titr_face 3}...{sleep 15}&{titr_face 2}it's all on you."
}else if(global.language=1){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 3}额，等等 ，孩子。{pause}{clear}等等，让我喘口气。{pause}{clear}{titr_face 1}好{sleep 15}，额，&{sleep 15}是这样的，{pause}{clear}你看，{sleep 15}你的旅途只不过&到了半程。{pause}{clear}{titr_face 2}现在回头还来得及。{pause}{clear}{titr_face 1}你只要轻点一下那个你从&未碰过的饶恕按钮，{pause}{clear}{titr_face 3}然后我们就可以，&{sleep 15}{titr_face 0}接着做朋友，我猜?{pause}{clear}{titr_face 3}...{sleep 15}&{titr_face 2}看你的了。"
}