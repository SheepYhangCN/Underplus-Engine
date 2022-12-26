fader.alpha=0
temp=0
BGM_Play(0,bgm_sansdate)
audio_play_sound(snd_logo,0,0)
typer=instance_create_depth(10,10,0,text_typer)
typer.text="{instant true}{skippable false}{font 1}{scale 2}"
if(global.language=LANGUAGE.ENGLISH){
typer.text+="{scale 4}Warmtale&{scale 3}Warma Fight Phase 1&{scale 2}Made By SheepYhangCN&AU By TH, xny, --地狱拖拉机-&Text By TH, SheepYhangCN&Warma Sprite By --地狱拖拉机-&Song in Battle By FloweSans&Sparing Song: Song of facing sun By 音乐人序曲"
typer1=instance_create_depth(180,440,0,text_typer)
typer1.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"}
if(global.language=LANGUAGE.SCHINESE){
typer.text+="{scale 3}温暖传说Warmtale&{scale 3}沃玛战 第1阶段&{scale 2}By 憨憨羊の宇航鸽鸽&AU By TH-跳、夏诺叶、--地狱拖拉机-&文本By TH-跳、憨憨羊の宇航鸽鸽&沃玛贴图By --地狱拖拉机-&战斗用曲 By FloweSans&饶恕的曲子：向阳之歌 By 音乐人序曲"
typer1=instance_create_depth(200,440,0,text_typer)
typer1.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}