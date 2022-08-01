depth=DEPTH_UI.PANEL;
char_player._moveable_menu=false
audio_pause_all()
_prefix="{shadow false}{scale 2}{font 1}{instant true}{gui true}{depth "+string(DEPTH_UI.TEXT)+"}"
inst=instance_create_depth(16+6+46,32+6+8,0,text_typer);
choice=0
screen=0
temp=0
temp1=0
if(global.language=0){
inst.text=_prefix+"Return&Back to Menu&Quit Game"}
if(global.language=1){
inst.text=_prefix+"{font 0}返回&回到菜单&退出游戏"}
