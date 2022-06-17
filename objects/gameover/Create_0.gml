soulx=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,320)//320
souly=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,240)//240
image_alpha=0
temp=2
temp1=0
temp2=0
audio_stop_all();
audio_sound_gain(bgm_gameover,1,0)
//BGM_Play(0,bgm_gameover)

//alarm[8]=1

alarm[0]=40;