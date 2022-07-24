//Dialog_Add("* TML&{sleep 20}* The creator of UTE.&{sleep 20}* Can make your HP max out.");
if(global.language=0){
	Dialog_Add("{font 0}* {color `yellow`}TML{color `white`}&{sleep 20}* Creator of UNDERTALE Engine. &{sleep 20}* Can make your HP maxed out. ")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 0}{color `yellow`}糖萌芦{color `white`}&{font 0}{sleep 20}* UNDERTALE Engine{font 0}的作者。&{font 0}{sleep 20}* {font 0}可以让你的{font 0}HP{font 0}回满。{font 0}{pause}{clear}* {font 0}记住 是糖萌{font 0}(meng){font 0}芦{sleep 20}&{font 0}* {font 0}不是糖葫{font 0}(hu){font 0}芦")
}
Dialog_Start();
event_inherited();

