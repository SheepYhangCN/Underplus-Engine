// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Item_GetSellGold(){
///@arg item_id
var ITEM=argument[0];

if(Item_IsValid(ITEM)){
	var INST=instance_create_depth(0,0,0,ITEM);
	var GOLD=INST._price_sell;
	instance_destroy(INST);
	return GOLD;
}else{
	return "";
}
}