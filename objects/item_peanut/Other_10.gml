///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate peanut.{sleep 15}&* Anya looks hungry.{sleep 15}&* You recovered 10 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了花生。{sleep 15}&* Anya看起来很馋。{sleep 15}&* 你恢复了10 HP。")
}
Dialog_Start();
Player_Heal(10);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();