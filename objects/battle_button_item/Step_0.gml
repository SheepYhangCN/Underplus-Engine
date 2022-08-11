event_inherited();

if(global.enemy=10){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_utc : spr_button_item_empty_utc;
}else{
sprite_index=(Item_GetNumber()>0) ? spr_button_item : spr_button_item_empty;
}