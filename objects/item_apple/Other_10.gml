///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("{font 0}* An apple a day, &  keeps the doctor away. {sleep 20}&* You recovered 40 HP. ")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("{font 0}* {font 0}一天一苹果，医生远离我。&{sleep 20}{font 0}* {font 0}你恢复了{font 0}40{font 0}点{font 0}HP{font 0}。")
}
Dialog_Start();
Player_Heal(40);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();