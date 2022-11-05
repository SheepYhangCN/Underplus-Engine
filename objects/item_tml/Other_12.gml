//Dialog_Add("* The Engine won't make you drop&  it.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You let TML go.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你放走了糖萌芦。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();