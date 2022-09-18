///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("{font 0}* You used the whole bottle of&  bubble water.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("{font 0}* 你用掉了整瓶泡泡水。")
}
Dialog_Start();
Item_Remove(_item_slot);
repeat(8){
Item_Add(item_sponge_bubble)}

event_inherited();