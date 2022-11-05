///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You recovered 25 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你恢复了25 HP。")
}
Dialog_Start();
Player_Heal(25);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();