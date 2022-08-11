///@desc Use
if(global.language=0){
	Dialog_Add("* You ate Spaghetti.{sleep 15}&* Although it tastes good, {sleep 15}But your&  face still reflexively twisted.{pause}{clear}* You recovered 6 HP.")
}else if(global.language=1){
	Dialog_Add("* 你吃下了意大利面。{sleep 15}&* 虽然味道不错，{sleep 15}&  但你的五官还是反射性地扭曲在了一起。{pause}{clear}* 你恢复了6 HP。")
}
Dialog_Start();
Player_Heal(6);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();