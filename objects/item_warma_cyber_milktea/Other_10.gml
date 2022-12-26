///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You drank Cyber Milktea.{sleep 15}&* I think I just drank nothing.{sleep 15}&* You recovered 30 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你喝掉了赛博奶茶。{sleep 15}&* 感觉喝了和没喝似的。{sleep 15}&* 你恢复了30点HP。")
}
Dialog_Start();
Player_Heal(30);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();