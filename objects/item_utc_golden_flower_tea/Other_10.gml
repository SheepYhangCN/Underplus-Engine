///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("{font 1}*  \"You\" drank the Golden Flower Tea.{sleep 15}&*  Its smell is full of memories of \"me\".{sleep 15}&*  But \"you\" don't have any feelings.{pause}{clear}*  You recovered 9 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* “你”喝下了金色花茶。{sleep 15}&* 茶的味道充斥着“我”的回忆。{sleep 15}&* 不过“你”并没有什么感触。{pause}{clear}* 你恢复了9 HP。")
}
Dialog_Start();
Player_Heal(9);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();