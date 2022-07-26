///@desc Use
if(global.language=0){
	Dialog_Add("* They're better dry.{sleep 15}&* You recovered 90 HP.")
}else if(global.language=1){
	Dialog_Add("* 生吃更好。{sleep 15}&* 你恢复了90点HP。")
}
Dialog_Start();
Item_Remove(_item_slot);
Player_Heal(90)

audio_play_sound(snd_item_heal,0,false);

event_inherited();