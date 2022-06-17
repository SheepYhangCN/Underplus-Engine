// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_CallDialog(){
///@arg index
var INDEX = argument[0];

if(INDEX < 4 && INDEX >= 0)
{
	var blt = instance_create_depth(0,0,0,shop._host.dialog[INDEX]);
	with(blt)
		event_user(0);
}
}