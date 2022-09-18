alarm[2]=-1
x=114514
head.x=114514
body.x=114514
legs.x=114514
fader.alpha=0	
Battle_SetState(BATTLE_STATE.RESULT)
if(global.language=LANGUAGE.ENGLISH){
Battle_SetDialog("{font 0}* You WON!&* You brought Anya away!&* You got Anya*1")}
if(global.language=LANGUAGE.SCHINESE){
Battle_SetDialog("{font 0}* 你赢了!&* 你抱走了Anya!&* 你喜提Anya一只。")}
Fader_Fade(0,1,59,119)
alarm[4]=180