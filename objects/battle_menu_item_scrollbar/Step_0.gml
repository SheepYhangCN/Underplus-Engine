if(instance_exists(a)){
instance_destroy(a)}
a=instance_create_depth(x-250,y-20,depth,text_typer)
a.text="{instant true}{color `gray`}{scale 2}{font 1}"+Item_GetInfo(Item_Get(battle._menu_choice_item))
if(Battle_GetMenu()!=BATTLE_MENU.ITEM){
	instance_destroy();
	instance_destroy(a)
}