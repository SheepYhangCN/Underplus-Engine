if(instance_exists(a)){
instance_destroy(a)}
a=instance_create_depth(x-250,y-18,depth,text_typer)
a.text="{instant true}{color `gray`}{scale 2}{font 1}"+Battle_GetEnemyActionInfo(Battle_GetMenuChoiceEnemyNum(),Battle_GetMenuChoiceAction())
if(Battle_GetMenu()!=BATTLE_MENU.ACT_ACTION){
	instance_destroy();
	instance_destroy(a)
}