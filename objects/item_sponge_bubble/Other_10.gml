///@desc Use
if(global.language=0){
	Dialog_Add("{font 0}* You ate Bubble.{sleep 15}&* You recovered 40 HP.")
}else if(global.language=1){
	Dialog_Add("{font 0}* 你吃掉了泡泡。{sleep 15}&* 你恢复了40点HP。")
}
Dialog_Start();
Player_Heal(40);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();