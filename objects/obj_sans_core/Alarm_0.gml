if(global.language=LANGUAGE.ENGLISH){
var text="{font 3}{scale 1.9}{voice 3}* heya,{sleep 15}&  you've been busy huh.{pause}{clear}{face 1}{face_emotion 3}* ...{pause}{face_emotion 4}&* let's just get to the \"core\".{pause}{encounter 16 true false}{alarm `obj_sans_core` 2 20}{end}"
}
if(global.language=LANGUAGE.SCHINESE){
var text="{font 3}{scale 1.8}{voice 3}{speed 5}* 嗨呀, {sleep 15}&  你最近很忙啊。{pause}{clear}{face 1}{face_emotion 3}* ...{pause}{face_emotion 4}&* 让我们直击“核心”吧。{pause}{encounter 16 true false}{alarm `obj_sans_core` 2 20}{end}"
}
Dialog_Add(text)
Dialog_Start()