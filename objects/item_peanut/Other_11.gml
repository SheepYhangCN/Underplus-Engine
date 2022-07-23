//Dialog_Add("* Heal Item&{sleep 20}* Can make your HP max out.&{sleep 20}* And it is infinite.");
if(global.language=0){
	Dialog_Add("* if you see this, that meant &  you are a dirty hacker&  or some bug appeared.")
}else if(global.language=1){
	Dialog_Add("* 如果你看到这个，&  说明你是个肮脏的黑客，&  或者说是出bug了。")
}
Dialog_Start();
event_inherited();

