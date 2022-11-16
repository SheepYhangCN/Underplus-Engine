sf = surface_create(640, 480)
d = 0
height = 0
depth=DEPTH_UI.FADER+2

if(Border_IsEnabled()){
Border_SetEnabled(false)
if(global.language=LANGUAGE.ENGLISH){
CC_Add("{font 1}Because of a bug of Water Effect,&Border was disabled.")}
if(global.language=LANGUAGE.SCHINESE){
CC_Add("由于水效果的一个Bug, &边框已被关闭。")}
}