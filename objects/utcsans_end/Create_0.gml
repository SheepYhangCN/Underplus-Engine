fader.alpha=0
temp=0
BGM_Play(0,bgm_sansdate)
audio_play_sound(snd_logo,0,0)
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(global.language=LANGUAGE.ENGLISH){
typer.text+="{scale 4}Undertale: Candid&{scale 3}Sans Fight&{scale 2}Made By SheepYhangCN&AU By Team Candid&Used Song: New dream and hope&By 不事黑猫恶魔事小僵c&Sans sprite by sankous"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(global.language=LANGUAGE.SCHINESE){
typer.text+="{scale 4}Undertale: Candid&{scale 3}Sans战&{scale 2}By 憨憨羊の宇航鸽鸽&AU By Team Candid&使用曲目: New dream and hope&By 不事黑猫恶魔事小僵c&Sans贴图By sankous"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}