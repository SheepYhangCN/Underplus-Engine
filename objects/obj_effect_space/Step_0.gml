//帧数检测
if(fps<30){a+=1}else{a=0}
if(a>fps*2){a=0}
if(a=fps*2){
instance_destroy()
if(global.language=LANGUAGE.ENGLISH){
CC_Add("{font 1}Because the fps is too low,&the space background was removed")}
if(global.language=LANGUAGE.SCHINESE){
CC_Add("由于帧数过低，星空背景已被移除")}}