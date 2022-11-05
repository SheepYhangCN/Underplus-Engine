if(instance_exists(a)){
instance_destroy(a)}
if(Battle_GetMenu()=BATTLE_MENU.ITEM){
a=instance_create_depth(x-250,y-18,depth,text_typer)
a.text="{instant true}{color `gray`}{scale 2}{font 1}"+Item_GetInfo(Item_Get(battle._menu_choice_item))}
if(Battle_GetMenu()!=BATTLE_MENU.ITEM&&Battle_GetMenu()!=BATTLE_MENU.ITEM_SECONDARY){
	instance_destroy();
	instance_destroy(a)
}