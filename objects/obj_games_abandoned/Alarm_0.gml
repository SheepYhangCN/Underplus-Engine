fader.alpha=0
audio_stop_all()
temp=0
if(quit=1){
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_LANDMARK,0);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.TRIGGER_WARP_DIR,DIR.DOWN);
room_goto(room_lobby);
}else if(_shop=1){
_shop=0
//Shop_Start(0)
if(global.language=LANGUAGE.ENGLISH){CC_Add("Coming Soon")}
if(global.language=LANGUAGE.SCHINESE){CC_Add("即将到来")}
room_restart()
}else{
//switch choice{
//}
}
