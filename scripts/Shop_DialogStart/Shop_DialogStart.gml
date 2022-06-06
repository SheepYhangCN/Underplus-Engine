// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_DialogStart(){
///@arg text
var blt = instance_create_depth(shop.border_x1+2*shop.width_text,2*shop.border_y1+2*shop.height_text,0,shop_dialog_typer);
blt.text = argument[0];
shop._dialog=true;
}