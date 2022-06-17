// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_GetDialog(){
///@arg host
var MAP = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SHOP_HOST);
var HOST = argument[0];
var HOST_INDEX = HOST.object_index;
HOST.dialog = HOST.dialog_init;
if(ds_exists(MAP, ds_type_map))
{
	if(ds_map_exists(MAP,HOST_INDEX))
	{
		//HOST.dialog = MAP[? HOST];
		HOST.dialog = ds_map_find_value(MAP,HOST_INDEX);
	}
}
}