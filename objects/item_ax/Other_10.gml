///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate AX.{sleep 20}&* You recovered 78 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃了暗星。{sleep 20}&* 你恢复了78点HP。")
}
Dialog_Start();

Player_Heal(78);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();