//Dialog_Add("* The Engine won't make you drop&  it.");
if(global.language=0){
	Dialog_Add("* You let {color `yellow`}TML{color `white`} go.")
}else if(global.language=1){
	Dialog_Add("* 你放走了{color `yellow`}糖萌芦{color `white`}。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();