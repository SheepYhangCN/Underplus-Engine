///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate Pain-killer.{sleep 15}&* It's \"bitter\" than into bone.{pause}{clear}* But the pain did decrease.{sleep 15}&* You recovered 5 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你服用了止痛片。{sleep 15}&* 那有点“骷”。{sleep 15}&* 而且“骷”到了“骨”子里。{pause}{clear}* 但伤痛确实减少了。{sleep 15}&* 你恢复了5 HP。")
}
Dialog_Start();
Player_Heal(5);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();