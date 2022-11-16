if(warning_time>0){
warning_time-=1}

if(warning_time>1){
if(width>8&&width<=15){
image_xscale=width/8
image_yscale=width/8
}else if(width>15){
image_xscale=width/10
image_yscale=width/10
}else{
image_xscale=width/5
image_yscale=width/5
}}

if(warning_time=1){
depth=DEPTH_BATTLE.BOARD-1
audio_play_sound(snd_dtknife_spawn,0,0)
//image_alpha=0
sprite_index=spr_pixel_mid
//y-=1000
image_xscale=width
image_yscale=1000
if(place_meeting(x,y,battle_soul)){
if(global.mode=GAME_MODE.EASY){
alarm[1]=1.5}else{
alarm[1]=1}
}
}

if(warning_time=0){
if(knife_time>0){
knife_time-=1}
if(knife_time=1){
Anim_Create(id,"image_alpha",0,0,1,-1,10)
Anim_Create(id,"image_xscale",0,0,image_xscale,3,10)}
}

if(image_alpha<=0){
instance_destroy()}

if(place_meeting(x,y,battle_soul)){
	Battle_CallSoulEventBulletCollision();
}