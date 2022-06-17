///@desc Use
//Dialog_Add("* You ate the Creator of this Game.&{sleep 20}* Fuck you GMS2.&{sleep 20}* Your HP is maxed out.");
Dialog_Add("{font 0}* {font 3}你吃了大棚的瓜。{sleep 20}&{font 0}* {font 3}你恢复了{font 0}30{font 3}点{font 0}HP{font 3}。")
Dialog_Start()

Player_Heal(30);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();