if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - Anya战")
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}
}
if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Anya Fight")
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}
global.battle=7
if(Battle_GetMenu() == BATTLE_MENU.FIGHT_AIM&&Battle_GetTurnNumber()<11&&flirted=false){head.seeing=true}else{head.seeing=false}

if(flirted=true){
if(global.language=LANGUAGE.ENGLISH){
	Battle_SetEnemyActionName(_enemy_slot,2,"Bring")
	Battle_SetEnemyActionInfo(_enemy_slot,2,"Bring her away")}
	if(global.language=LANGUAGE.SCHINESE){
	Battle_SetEnemyActionName(_enemy_slot,2,"抱走")
	Battle_SetEnemyActionInfo(_enemy_slot,2,"把她抱走（")}
}
if(flirted=false){
if(global.language=LANGUAGE.ENGLISH){
	Battle_SetEnemyActionName(_enemy_slot,2,"Flirt")
	Battle_SetEnemyActionInfo(_enemy_slot,2,"Flirt enemy")}
	if(global.language=LANGUAGE.SCHINESE){
	Battle_SetEnemyActionName(_enemy_slot,2,"调情")
	Battle_SetEnemyActionInfo(_enemy_slot,2,"调情敌人")}
}