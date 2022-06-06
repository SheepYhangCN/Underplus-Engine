//Dialog_Add("* The Engine won't make you drop&  it.");
if(global.language=0){
	Dialog_Add("{font 0}* You throw {color `yellow`}TML{color `white`} away.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}你扔掉了{color `yellow`}糖萌芦{color `white`}。")
}
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();