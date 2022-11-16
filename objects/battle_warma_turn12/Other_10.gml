Battle_SetTurnInfo(BATTLE_TURN.TIME,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

audio_stop_sound(bgm_warma)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
inst.text="{warma_face 3}{speed 2}...{sleep 15}{warma_face 2}&so you still&don't give up?{pause}{clear}{warma_face 1}You are really persistent{pause}{clear}{warma_face 5}*yawn*{pause}{clear}{warma_face 4}ha, sorry,{sleep 30}&I'm a little tired&from the fight{pause}{clear}{warma_face 3}......{pause}{clear}Then, {sleep 15}I want to tell you, {sleep 15}{warma_face 2}&I'm still believe in you{pause}{clear}Look, {sleep 15} everyone will&make mistakes{sleep 15}{warma_face 1}&even me too{pause}{clear}{warma_face 2}But the point is that&you need to working on&fixing it{pause}{clear}{warma_face 3}...if you are still&the one i know,{pause}{clear}{warma_face 2}Then spare me,&press the reset button{pause}{clear}{warma_face 4}I trust you.{pause}{warma_face 3}{end}"
}
if(global.language=LANGUAGE.SCHINESE){
inst.text="{warma_face 3}{speed 4}...{sleep 15}{warma_face 2}&所以你还不放弃吗{pause}{clear}{warma_face 1}你还真是锲而不舍啊{pause}{clear}{warma_face 5}*哈欠*{pause}{clear}{warma_face 4}哈 抱歉{sleep 30}&打得我有点困了{pause}{clear}{warma_face 3}......{pause}{clear}那么, {sleep 15}我想说的是, {sleep 15}{warma_face 2}&我仍信任着你{pause}{clear}你看啊{sleep 15}&任何人都会犯错{sleep 15}{warma_face 1}&即使是我也会{pause}{clear}{warma_face 2}重点是要积极改正{pause}{clear}{warma_face 3}...如果你还是&我认识的那个他的话{pause}{clear}{warma_face 2}就去饶恕我 按下重置吧。{pause}{clear}{warma_face 4}我相信你{pause}{warma_face 3}{end}"
}