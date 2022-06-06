if(global.language=0){
window_set_caption(GAME_NAME+" - Sannes Fight | Phase 1")
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
global.enemy=1
if(Battle_GetTurnNumber()=7){
Battle_SetEnemyName(_enemy_slot,"{font 0}Sannes{color `gray`} (Tired)")}
}else if(global.language=1){
window_set_caption(GAME_NAME+" - Sannes 战 | 第1阶段")
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}
global.enemy=1
if(Battle_GetTurnNumber()=7){
Battle_SetEnemyName(_enemy_slot,"{font 0}Sannes{font 3}{color `gray`}（疲惫）")}
}