///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate Black Corn.{sleep 15}&* There even a bowknot on it.{sleep 15}&* You recovered 60 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了黑色玉米。{sleep 15}&* 上面甚至有个蝴蝶结。{sleep 15}&* 你恢复了60点HP。")
}
Dialog_Start();
Player_Heal(60);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();