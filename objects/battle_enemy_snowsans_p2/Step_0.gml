if(global.language=LANGUAGE.ENGLISH){
window_set_caption("Undertale: Snowdin Encounter | Sans Fight | Phase 2")
if(_hp<0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption("Undertale: 雪镇之遇 | Sans战 | 第2阶段")
if(_hp<0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}}
global.battle=BATTLE.UTSE_SANS_P2
if(enable_effect){
effect=instance_create_depth(random(room_width+100),0,0,obj_season_effect)
effect.image_index=3
effect.image_alpha=1
//a.alarm[0]=-1
}

if(Battle_GetTurnNumber()=0){
	head.image_index=4}