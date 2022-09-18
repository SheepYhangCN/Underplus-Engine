///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate CNJ.{sleep 20}&* You recovered {font 1}1+1+4+5+1+4{font 0} HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃了CNJ。{sleep 20}&* 你恢复了1+1+4+5+1+4点HP。")
}
Dialog_Start();

Player_Heal(1+1+4+5+1+4);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();