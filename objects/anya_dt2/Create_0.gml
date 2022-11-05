fader.color=c_white
spr=1
fader.alpha=0
Anim_Create(fader,"alpha",0,0,fader.alpha,-fader.alpha,1)
temp=0
audio_stop_all()
main_audio=audio_play_sound(bgm_dt_p2_intro,0,0)
a=instance_create_depth(5,5,0,text_typer)
if(global.language=LANGUAGE.SCHINESE){
a.text="{scale 1}{skippable false}{instant true}按C跳过"}
if(global.language=LANGUAGE.ENGLISH){
a.text="{scale 1}{skippable false}{instant true}Press C to skip"}

aa=instance_create_depth(room_width/5*1,room_height/3*2,0,text_typer)
if(global.language=LANGUAGE.SCHINESE){
aa.text="{skippable false}{speed 10}{scale 2.5}{voice 7}{font 3}你以为只需要一击&就能打倒阿尼亚?{sleep 120}{clear}阿尼亚可没那么脆弱{sleep 120}{clear}{color `red`}你和你那愚蠢的小弟{sleep 60}&还得再努力点。"}
if(global.language=LANGUAGE.ENGLISH){
aa.text="{skippable false}{speed 5}{scale 2}{voice 7}{font 3}you think you can kill&anya with one hit?{sleep 100}{clear}anya is not weak like that {sleep 90}{clear}{color `red`}{speed 3}you and your noob followers{sleep 60}&have to working harder."}
//alarm[0]=1
shd=instance_create_depth(0,0,0,obj_effect_blur)
shd.duration=-1
shd.var_blur_amount=0.3
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
alarm[5]=290
alarm[0]=490
//alarm[1]=500
alarm[2]=925
alarm[4]=1
alarm[6]=875
audio=0