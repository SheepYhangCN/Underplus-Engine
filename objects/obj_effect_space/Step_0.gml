//帧数检测
if(fps<=40){
instance_destroy()
if(global.language=0){
show_message_async("Because the fps is too low,\nthe space background has been removed")}
if(global.language=1){
show_message_async("由于帧数过低，\n星空背景已被移除")}}