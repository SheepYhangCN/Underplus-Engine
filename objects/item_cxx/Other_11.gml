//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* Cxx{sleep 15}&* Cxx.{sleep 15}&* Can recover -1 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* Cxx{sleep 15}&* Cxx。{sleep 15}&* 可以恢复-1点HP。")
}
Dialog_Start();
event_inherited();

