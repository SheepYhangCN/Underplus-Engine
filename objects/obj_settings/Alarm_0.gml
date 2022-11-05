instance_destroy(a)
_sin += 0.08
a=instance_create_depth(80 + sin(_sin)*3,365 + cos(_sin)*3,0,text_typer)
//a=instance_create_depth(random_range(79,81),random_range(359,361),0,text_typer)
if(current_month>=3&&current_month<=5){
if(global.language=LANGUAGE.ENGLISH){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}spring time&back to school."
}else if(global.language=LANGUAGE.SCHINESE){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}春天来了&该上学了"}
}
if(current_month>=6&&current_month<=8){
if(global.language=LANGUAGE.ENGLISH){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}try to withstand&the sun's&life-giving rays."
}else if(global.language=LANGUAGE.SCHINESE){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}我想像那&太阳一样&散发光芒"}
}
if(current_month>=9&&current_month<=11){
if(global.language=LANGUAGE.ENGLISH){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}sweep a leaf,&sweep away a troubles."
}else if(global.language=LANGUAGE.SCHINESE){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}扫走一片树叶&扫走一片烦恼"}
}
if(current_month=12||current_month<=2){
if(global.language=LANGUAGE.ENGLISH){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}cold outside&but stay warm&inside of you."
}else if(global.language=LANGUAGE.SCHINESE){
	a.text="{color `gray`}{scale 2}{instant true}{font 1}外面虽冷&但你内心&仍存温暖"}
}
alarm[0]=1