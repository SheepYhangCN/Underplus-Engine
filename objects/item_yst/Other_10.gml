///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
if(global.language=0){
	Dialog_Add("* You want to eat Yst.{sleep 20}&* Yst gave you a slap and ran&  away.{sleep 20}{clear}* You got a cat claw mark on your&  face.{pause}{clear}* You recovered 1+5+7+4+9 HP.")
}else if(global.language=1){
	Dialog_Add("* 你想吃掉养生堂。{sleep 20}&* 养生堂给了你一巴掌然后跑走了。{sleep 20}&* 你脸上喜提猫爪痕。{pause}{clear}* 你恢复了1+5+7+4+9点HP。")
}
Dialog_Start();

Player_Heal(1+5+7+4+9);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();