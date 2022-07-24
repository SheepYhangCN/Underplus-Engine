///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=0){
	Dialog_Add("{font 0}* You asked {color `yellow`}TML{color `white`} for help. &{sleep 15}* He filled your HP, yay!&{sleep 15}* Your HP was maxed out.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 0}你寻求了{color `yellow`}糖萌芦{color `white`}的帮助。&{sleep 15}{font 0}* 他给你血回满了，好耶！&{sleep 15}{font 0}* {font 0}你的{font 0}HP{font 0}已满！")
}
Dialog_Start();

Player_Heal(9999999999);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();