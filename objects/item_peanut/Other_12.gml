//Dialog_Add("* You won't be able to drop it.");
if(global.language=0){
	Dialog_Add("* if you see this, that meant &  you are a dirty hacker&  or some bug appeared.")
}else if(global.language=1){
	Dialog_Add("* 如果你看到这个，&  说明你是个肮脏的黑客，&  或者说是出bug了。")
}
Dialog_Start();

instance_destroy();