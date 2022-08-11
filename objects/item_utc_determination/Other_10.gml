///@desc Use
if(global.language=0){
	Dialog_Add("* You filled with Determination.{sleep 15}&* You recovered 1 HP.")
}else if(global.language=1){
	Dialog_Add("* 你充满了决心。{sleep 15}&* 你恢复了1 HP。")
}
Dialog_Start();
Player_Heal(1);

audio_play_sound(snd_item_heal,0,false);

event_inherited();