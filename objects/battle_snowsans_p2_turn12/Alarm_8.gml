audio_play_sound(snd_flee,0,0)
text=instance_create_depth(10,10,0,text_typer)
if(global.language=0){
text.text="{font 0}{scale 2}{voice 1}{speed 2}* Papyrus escaped..."}
if(global.language=1){
text.text="{font 0}{scale 2}{voice 1}{speed 2}* Papyrus逃跑了..."}
Fader_Fade(0,1,30,120)
alarm[9]=180