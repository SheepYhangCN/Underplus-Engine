///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate Hotland Fruit.{sleep 15}&* From Hotland, hot to melted.{sleep 15}&* You recovered 80 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了热袋水果。{sleep 15}&* 是一袋来自热带的水果, 都被热化了。{sleep 15}&* 你恢复了80点HP。")
}
Dialog_Start();
Player_Heal(80);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();