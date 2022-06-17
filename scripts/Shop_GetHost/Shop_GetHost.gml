// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_GetHost(){
///@arg shop_id

var ID=argument[0];

var map=global._shop;
if(ds_map_exists(map,ID)){
	var map_e=ds_map_find_value(map,ID);
	var result=ds_map_find_value(map_e,"host");
	return (is_real(result) ? result : -1);
}else{
	return -1;
}
}