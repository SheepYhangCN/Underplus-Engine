//Dialog_Add("* You won't be able to drop it.");
if(global.language=0){
	Dialog_Add("{font 0}* You throw Apple away.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}你扔掉了苹果。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();