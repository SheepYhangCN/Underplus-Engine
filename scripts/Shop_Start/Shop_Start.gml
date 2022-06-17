// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_Start(){
///@arg shop_id

var SHOP=argument[0];

if(Shop_IsExists(SHOP)){
	
	//if(Encounter_IsPauseBGM(SHOP)){
	//	BGM_Pause(0);
	//}
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.SHOP,SHOP);
		
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.SHOP_ROOM_RETURN,room);
	room_persistent=true;

	room_goto(room_shop);
	
	return true;
}else{
	return false;
}
}