if(screen=0){
if(Input_IsPressed(INPUT.UP)){
if(choice>0){
audio_play_sound(snd_menu_switch,0,0)}
choice-=1}
if(Input_IsPressed(INPUT.DOWN)){
if(choice<2){
audio_play_sound(snd_menu_switch,0,0)}
choice+=1}

if(choice<0){
choice=0}
if(choice>2){
choice=2}

if(Input_IsPressed(INPUT.CANCEL)){
instance_destroy(inst)
instance_destroy()
audio_resume_all()
char_player._moveable_menu=true
}

if(Input_IsPressed(INPUT.CONFIRM)){
audio_play_sound(snd_menu_confirm,0,0)
if(choice=0){
instance_destroy(inst)
instance_destroy()
audio_resume_all()
char_player._moveable_menu=true
}
if(choice=1||choice=2){
screen=1}
}
}else if(screen=1&&temp1=0){
if(Input_IsPressed(INPUT.CANCEL)){
	screen=0
}

if(Input_IsPressed(INPUT.CONFIRM)){
audio_play_sound(snd_menu_confirm,0,0)
fader.color=c_black
Fader_Fade(0,1,30)
temp=1
temp1=1
}}
if(temp=1&&fader.alpha=1){
Anim_Destroy(fader,"alpha")
temp=0
alarm[0]=30
}
