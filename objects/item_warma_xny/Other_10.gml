///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate ynx...I mean xny{pause}{clear}* Taste like vegetative (what){pause}{clear}* Your HP was maxed out.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了新能源...呸, 是夏诺叶{pause}{clear}* 一股植物人的味道 (确信){pause}{clear}* 你的HP已满。")
}
Dialog_Start();
Player_Heal(999999999);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();