if(global.language=1){
window_set_caption(GAME_NAME+" - Ink!Sans战")
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}
}
if(global.language=0){
window_set_caption(GAME_NAME+" - Ink!Sans Fight")
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}
global.enemy=1
Battle_SetFleeable(true)
