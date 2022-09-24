//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* Honyaradoh{sleep 15}&* A Nekomusume.{sleep 15}&* Can recover 1+5+7+4+9 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 养生堂{sleep 15}&* 事猫娘。{sleep 15}&* 可以恢复1+5+7+4+9点HP。")
}
Dialog_Start();
event_inherited();