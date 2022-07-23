fader.alpha=0
temp=0
BGM_Play(0,bgm_sansdate)
audio_play_sound(snd_logo,0,0)
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(global.language=0){
typer.text+="{scale 4}Anya Forger Fight&{scale 3}(NO AU, based on <Spy x Family>)&{scale 2}Made By SheepYhangCN&Used Song: 心照不宣 by PikaLcu_靓&Sprites by 无名的wm"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(global.language=1){
typer.text+="{scale 4}Anya Forger战&{scale 3}(无AU 基于《间谍过家家》)&{scale 2}By 憨憨羊の宇航鸽鸽&使用曲子: 心照不宣 by PikaLcu_靓&贴图By 无名的wm"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 3}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}