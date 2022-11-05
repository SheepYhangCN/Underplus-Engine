//Dialog_Add("* The Engine won't make you drop&  it.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* Ptfk ran away.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 拼图方块陶艺了。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();