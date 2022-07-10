//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=0){
	Dialog_Add("* Ptfk{sleep 15}&* Can recover -1 HP.")
}else if(global.language=1){
	Dialog_Add("* 拼图方块{sleep 15}&* 可以恢复-1点HP。")
}
Dialog_Start();
event_inherited();