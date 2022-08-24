event_inherited();

if(global.battle=10){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_utc : spr_button_item_empty_utc;
}else if(global.battle=11){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_starry : spr_button_item_empty_starry;
}else{
sprite_index=(Item_GetNumber()>0) ? spr_button_item : spr_button_item_empty;
}