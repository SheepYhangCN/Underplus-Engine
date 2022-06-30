///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=0){
	Dialog_Add("* You asked the game author for&  help.{pause}{clear}* He restored you 114514 HP and&  ran away.")
}else if(global.language=1){
	Dialog_Add("* 你寻求游戏作者的帮助。{pause}{clear}* 你宇航大跌给你回了114514点HP然后&  跑路了。")
}
Dialog_Start();

Player_Heal(114514);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();