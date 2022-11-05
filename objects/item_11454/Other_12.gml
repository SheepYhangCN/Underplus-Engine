//Dialog_Add("* The Engine won't make you drop&  it.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* 29 59 14 6C.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 29 59 14 6C。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();