if(global.language=0){
	Dialog_Add("* You ate Yuhang.{sleep 15}&* You recovered 114514 HP.")
}else if(global.language=1){
	Dialog_Add("* 你吃了宇航。{sleep 15}&* 你恢复了114514点HP。")
}
Dialog_Start();

Player_Heal(114514);

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();