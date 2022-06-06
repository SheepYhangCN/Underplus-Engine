// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_IsExists(){
///@arg shop_id
var SHOP=argument[0];

var map=global._shop;

return ds_map_exists(map,SHOP);
}