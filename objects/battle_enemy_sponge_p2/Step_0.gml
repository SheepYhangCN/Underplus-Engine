if(global.language=LANGUAGE.ENGLISH){
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}else if(global.language=LANGUAGE.SCHINESE){
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}}
window_set_caption("Spongeswap")
global.battle=BATTLE.SPONGE_P2

headx=bodyx
heady=bodyy-48
if(Battle_GetState()!=BATTLE_STATE.MENU&&instance_exists(menuspatula)){menuspatula.type=BULLET_TYPE.BLUE}