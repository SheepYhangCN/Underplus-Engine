///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("{font 0}* You ate Chumstick.{sleep 15}&* IT'S SO FUCKING UNPALATABLE.{sleep 15}&* You lost 91 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("{font 0}* 你吃掉了海霸糊。{sleep 15}&* 口区{sleep 15}&* 你失去了91点HP。")
}
Dialog_Start();
Player_Hurt(91);
Item_Remove(_item_slot);

audio_play_sound(snd_hurt,0,false);

event_inherited();