event_inherited();

if(global.battle=BATTLE.UTC_SANS){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_utc : spr_button_item_empty_utc;
}else if(global.battle=BATTLE.STARRY_SANS){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_starry : spr_button_item_empty_starry;
}else if(global.battle=BATTLE.WARMA){
sprite_index=(Item_GetNumber()>0) ? spr_button_item_wt : spr_button_item_empty_wt;
}else{
sprite_index=(Item_GetNumber()>0) ? spr_button_item : spr_button_item_empty;
}