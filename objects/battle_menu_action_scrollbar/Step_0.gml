if(instance_exists(a)){
instance_destroy(a)}
a=instance_create_depth(x-250,y-18,depth,text_typer)
a.text="{instant true}{color `gray`}{scale 2}{font 1}"+Battle_GetEnemyActionInfo(Battle_GetMenuChoiceEnemy()+(instance_exists(Battle_GetEnemy(0)) ? 0 : 1)+(instance_exists(Battle_GetEnemy(1)) ? 0 : 1),Battle_GetMenuChoiceAction())
if(Battle_GetMenu()!=BATTLE_MENU.ACT_ACTION){
	instance_destroy();
	instance_destroy(a)
}