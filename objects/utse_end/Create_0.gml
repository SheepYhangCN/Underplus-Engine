fader.alpha=0
temp=0
BGM_Play(0,bgm_sansdate)
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(global.language=LANGUAGE.ENGLISH){
typer.text+="{scale 3}Undertale: Snowdin Encounter&{scale 3}(Disbelief prequel)&{scale 2}Made By SheepYhangCN&Used Song: Last Breath(TM) Phase 68& - TEARS IN THE RAIN by AlterFox&Sans Sprite By 池丫塘小莎"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(global.language=LANGUAGE.SCHINESE){
typer.text+="{scale 4}Undertale: 雪镇之遇&{scale 3}(Disbelief前传)&{scale 2}By 憨憨羊の宇航鸽鸽&使用曲子:&终焉之嬉 第68阶段 - TEARS IN THE RAIN by AlterFox&Sans贴图By 池丫塘小莎"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}