// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_GetDialogTitle(){
///@arg index
var INDEX = argument[0];

if(INDEX < 4 && INDEX >= 0)
{
	var blt = instance_create_depth(0,0,0,shop._host.dialog[INDEX]);
	var TITLE = blt.title;
	var BLEND = blt.title_blend;
	
	switch(BLEND)
	{
		case c_white:
			BLEND = "`white`";
			//BLEND = "{color 'white'}";
			break;
		case c_yellow:
			BLEND = "`yellow`";
			//BLEND = "{color 'yellow'}";
			break;
		default:
			break;
	}
	
	var RESULT = "{color "+ BLEND + "}" + TITLE;
	//var RESULT = BLEND + TITLE;
	
	instance_destroy(blt);
	return RESULT;
}
else
	return false;
}