///@arg item_id
function Item_GetInfo() {
	var ITEM=argument[0];

	if(Item_IsValid(ITEM)){
		var INST=instance_create_depth(0,0,0,ITEM);
		var NAME=INST._info;
		instance_destroy(INST);
		return NAME;
	}else{
		return "";
	}


}
