if(global.language=1){
window_set_caption(GAME_NAME+" - 小游戏 | 3分钟大风车耐力战")
if(_hp<=0){
show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)}
}
if(global.language=0){
window_set_caption(GAME_NAME+" - Minigame | 3 Minute GB Fan Fight")
if(_hp<=0){
show_error("This is an Error message, If u see this message, please tell the author",true)}
}
global.battle=12

if(Input_IsPressed(INPUT.CANCEL)&&temp=false){
temp=true
fader.color=c_black
Fader_Fade(0,1,29)
alarm[2]=30
}
if(temp=true){Player_Heal(114514)}