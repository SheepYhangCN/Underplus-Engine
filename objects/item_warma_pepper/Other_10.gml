///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate Sichuan Pepper.{sleep 15}&* Taste like crab...?{sleep 15}&* You recovered 40 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了花椒。{sleep 15}&* 有种蟹肉的味道...?{sleep 15}&* 你恢复了40点HP。")
}
Dialog_Start();
Player_Heal(40);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();