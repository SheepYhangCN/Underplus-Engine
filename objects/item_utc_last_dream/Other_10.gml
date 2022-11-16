///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You hold your dream.{sleep 25}&* ...{sleep 15} Unfortunately, {sleep 10}&  this time it didn't come true.{pause}{clear}* You recovered 15 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你紧握了梦想。{sleep 25}&* ...{sleep 15}&* 可惜, {sleep 10}这次梦想并没有成真。{pause}{clear}* 你恢复了15 HP。")
}
Dialog_Start();
Player_Heal(15);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();