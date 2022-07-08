///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=0){
	Dialog_Add("* You asked the game author for&  help.{pause}{clear}* He cleared your Karma and restored&  you {font 1}1+1+4+5+1+4+1+9+1+9+8+1+0{font 0} HP&  and ran away.")
}else if(global.language=1){
	Dialog_Add("* 你寻求游戏作者的帮助。{pause}{clear}* 你宇航大跌把你业报去了然后给你&  回了1+1+4+5+1+4+1+9+1+9+8+1+0点HP&  然后跑路了。")
}
Dialog_Start();

Player_SetKR(0)

Player_Heal(1+1+4+5+1+4+1+9+1+9+8+1+0);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();