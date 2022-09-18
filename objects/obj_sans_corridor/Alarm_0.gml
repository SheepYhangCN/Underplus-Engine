if(global.language=LANGUAGE.ENGLISH){
var text="{font 3}{scale 1.9}{voice 3}* heya,{sleep 15}&  you've been busy huh.{pause}{clear}{face 1}{face_emotion 3}* ...{pause}{face_emotion 4}&* let's just get to the \"bone\".{pause}{encounter 9 true false}{end}"
}
if(global.language=LANGUAGE.SCHINESE){
var text="{font 3}{scale 1.8}{voice 3}{speed 5}* 嗨呀，{sleep 15}&  你最近很忙啊。{pause}{clear}{face 1}{face_emotion 3}* ...{pause}{face_emotion 4}&* 让我们直入“骨”题吧。{pause}{encounter 9 true false}{end}"
}
Dialog_Add(text)
Dialog_Start()