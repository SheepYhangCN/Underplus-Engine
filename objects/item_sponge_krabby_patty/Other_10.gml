///@desc Use
if(global.language=0){
	Dialog_Add("{font 0}* You ate Krabby Patty.{sleep 15}&* Your HP was maxed out.")
}else if(global.language=1){
	Dialog_Add("{font 0}* 你吃掉了美味蟹堡。{sleep 15}&* 你的HP已满。")
}
Dialog_Start();
Player_Heal(999999999);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();