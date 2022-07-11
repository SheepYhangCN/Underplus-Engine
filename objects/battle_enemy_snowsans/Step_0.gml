var time=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.TIME)
var minute=time div 60;
var second=time mod 60;
var time_text=(minute<10 ? "0" : "")+string(minute)+":"+(second<10 ? "0" : "")+string(second)
if(global.language=0){
np_setpresence("In Battle - UT:SE Sans Fight | Phase 1",time_text,"template_icon_","None")
window_set_caption("Undertale: Snowdin Encounter | Sans Fight | Phase 1")
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}else if(global.language=1){
np_setpresence("战斗中 - UT:SE Sans战 | 第1阶段",time_text,"template_icon_","None")
window_set_caption("Undertale: 雪镇之遇 | Sans战 | 第1阶段")
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}}
global.enemy=4
a=instance_create_depth(random(room_width+100),0,0,season_effect)
a.image_index=3
a.image_alpha=1
//a.alarm[0]=-1