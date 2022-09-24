soulx=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,320)//320
souly=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,240)//240
image_alpha=0
temp=2
temp1=0
temp2=0
audio_stop_all();
audio_sound_gain(bgm_gameover,1,0)
fader.alpha=0
Anim_Destroy(fader,"alpha")
camera.angle=0
camera.scale_x=1
camera.scale_y=1
camera.x=0
camera.y=0
Anim_Destroy(camera,"angle")
Anim_Destroy(camera,"scale_x")
Anim_Destroy(camera,"scale_y")
Anim_Destroy(camera,"x")
Anim_Destroy(camera,"y")

//alarm[8]=1

alarm[0]=40;