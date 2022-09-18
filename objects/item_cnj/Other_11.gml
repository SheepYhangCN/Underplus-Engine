//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* CNJ{sleep 15}&* Can recover 55 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* CNJ{sleep 15}&* 可以恢复55点HP。")
}
Dialog_Start();
event_inherited();