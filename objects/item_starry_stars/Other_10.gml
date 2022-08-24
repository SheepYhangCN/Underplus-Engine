///@desc Use
if(global.language=0){
	Dialog_Add("* You ate stars.{sleep 15}&* You recovered 60 HP.")
}else if(global.language=1){
	Dialog_Add("* 你吃了星辰。{sleep 15}&* 你恢复了60点HP。")
}
Dialog_Start();
Item_Remove(_item_slot);
Player_Heal(60)

audio_play_sound(snd_item_heal,0,false);

event_inherited();