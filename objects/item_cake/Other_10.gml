///@desc Use
if(global.language=0){
	Dialog_Add("{font 0}* You ate Cake &{sleep 20}* Your HP was maxed out.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}你吃掉了蛋糕。&{sleep 20}{font 0}* {font 3}你的{font 0}HP{font 3}已满！")
}
Dialog_Start();
Player_Heal(9999999999);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();