///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate 地狱拖拉机...what?{pause}{clear}* Although this is the creator of&  this AU, But it is safe&  to eat whole tractor(拖拉机)?{pause}{clear}* Anyways, your HP was maxed out,&  And your ATK and DEF increased.{pause}{clear}* Why? {sleep 15}I don't know, &  you can ask himself.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃掉了地狱拖拉机...嗯?{pause}{clear}* 虽然说这是这个AU的原作者, &  但是吃一个拖拉机真的好吗?{pause}{clear}* 反正, 你的HP已满, &  同时你的攻击和防御都加强了。{pause}{clear}* 为什么? {sleep 15}我也不知道, &  你可以问问他。")
}
Dialog_Start();
Player_Heal(999999999);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();