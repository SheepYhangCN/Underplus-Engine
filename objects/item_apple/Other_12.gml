//Dialog_Add("* You won't be able to drop it.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("{font 0}* You throw Apple away.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("{font 0}* {font 0}你扔掉了苹果。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();