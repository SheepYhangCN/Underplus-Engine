///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate TH, &  the Text of this AU!{pause}{clear}* Wait, you ate him?{sleep 15}&  It's a guy on upper narrative!{pause}{clear}* Anyways, your HP was maxed out.{sleep 15}&  and you remember the memory&  of the multiverse.{pause}{clear}* Your ATK dropped.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃下了跳, 是这个AU的文案作者! {pause}{clear}* 等会儿, 你把他吃了?{sleep 15}&  那可是一个上层叙事的家伙啊!{pause}{clear}* 唉, 不管怎么说, 你的HP已满。{sleep 15}&  同时你想起来了多元宇宙的回忆。{pause}{clear}* 你的攻击下降了。")
}
Dialog_Start();
Player_Heal(999999999);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();