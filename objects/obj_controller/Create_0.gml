choice=0
temp=0

title=instance_create_depth(150,100,0,text_typer)
keyboard=instance_create_depth(160,220,0,text_typer)
controller=instance_create_depth(370,220,0,text_typer)
if(global.language=LANGUAGE.ENGLISH){
prefix="{instant true}{scale 2}{font 1}"
title.text=prefix+"Controller was detected.&Which playing method do you prefer?"
keyboard.text=prefix+"{color `yellow`}Keyboard"
controller.text=prefix+"Controller"}
if(global.language=LANGUAGE.SCHINESE){
prefix="{instant true}{scale 2}{font 0}"
title.text=prefix+"已检测到控制器。&你想使用哪种方式游玩？"
keyboard.text=prefix+"{color `yellow`}键盘"
controller.text=prefix+"手柄"}