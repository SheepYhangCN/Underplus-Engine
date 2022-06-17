//audio_play_sound(snd_ding,0,0)
page=0
if(current_month>=3&&current_month<=5&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if(current_month>=6&&current_month<=8&&!audio_is_playing(bgm_menu_summer)){
BGM_Play(0,bgm_menu_summer,true,1,1)}
if(current_month>=9&&current_month<=11&&!audio_is_playing(bgm_menu_spring_autumn)){
BGM_Play(0,bgm_menu_spring_autumn,true,1,1)}
if((current_month=12||current_month<=2)&&!audio_is_playing(bgm_menu_winter)){
BGM_Play(0,bgm_menu_winter,true,1,1)}
if(global.language=0){
dialog=instance_create_depth(200,10,0,text_typer)
dialog.text="{scale 3}{instant true}Credits"
dialog1=instance_create_depth(70,70,0,text_typer)
dialog1.text="{font 1}{scale 2}{speed 1}{instant true}YH!Undertale Games By SheepYhangCN&UNDERTALE Engine By TML&GameMaker Studio 2 By YoYoGames&&Blue Soul \\& Platform \\& Bone By OneZhaZha&Gaster Blaster By Schizoid_Doge&Space background Shader By Kali&Animate HP bar By Panthervention&Shop By 不会起名的一杯猹&Developer Console By DaveTech&Mobile Control By Darknslim"
dialog2=instance_create_depth(100,415,0,text_typer)
dialog2.text="{scale 2}{instant true}{color `gray`}[Use arrow keys to swtich page]&[Press X or Shift to return]"
dialog3=instance_create_depth(450,20,0,text_typer)
dialog3.text="{scale 2}{instant true}{color `gray`}<{color `white`}Page "+string(page+1)+"/3>"
}else if(global.language=1){
dialog=instance_create_depth(200,10,0,text_typer)
dialog.text="{scale 3}{instant true}制作名单"
dialog1=instance_create_depth(80,60,0,text_typer)
dialog1.text="{font 1}{scale 2}{speed 1}{instant true}YH!Undertale Games By 憨憨羊の宇航鸽鸽&UNDERTALE Engine By 糖萌芦&GameMaker Studio 2 By YoYoGames&&蓝魂和板子和骨头By 1个渣渣&Gaster Blaster By Schizoid_Doge&星空背景着色器By Kali&动态血条By Panthervention&商店By不会起名的一杯猹&开发者控制台By DaveTech&移动端操作By Darknslim"
dialog2=instance_create_depth(140,412,0,text_typer)
dialog2.text="{scale 2}{instant true}{color `gray`}[使用方向键来翻页]&[按下 X 或 Shift 来返回]"
dialog3=instance_create_depth(480,20,0,text_typer)
dialog3.text="{scale 2}{instant true}{color `gray`}<{color `white`}第"+string(page+1)+"/3页>"
}