///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=0){
	Dialog_Add("{font 0}* You ate {color `yellow`}TML{color `white`}. &{sleep 15}* UNDERTALE Engine Forever!&{sleep 15}* Your HP was maxed out.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}你吃了{color `yellow`}糖萌芦{color `white`}。&{sleep 15}{font 0}* UNDERTALE Engine{font 3}永远滴神！&{sleep 15}{font 0}* {font 3}你的{font 0}HP{font 3}已满！")
}
Dialog_Start();

Player_Heal(9999999999);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();