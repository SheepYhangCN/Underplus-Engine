///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You asked the game author for&  help.{pause}{clear}* He cleared your Karma and made&  your HP maxed out and ran away.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你寻求游戏作者的帮助。{pause}{clear}* 你宇航大跌把你业报去了然后给你&  回满了血然后跑路了。")
}
Dialog_Start();

Player_SetKR(0)

Player_Heal(1145141919810);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();