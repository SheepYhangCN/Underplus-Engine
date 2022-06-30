//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=0){
	Dialog_Add("* SheepYhangCN{sleep 15}&* The author of this game.{sleep 15}&* Just a loser.")
}else if(global.language=1){
	Dialog_Add("* 憨憨羊の宇航鸽鸽{sleep 15}&* 这个游戏的作者。{sleep 15}&* 就是个寄吧。")
}
Dialog_Start();
event_inherited();

