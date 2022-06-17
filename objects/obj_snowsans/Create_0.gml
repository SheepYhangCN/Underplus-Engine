audio_stop_all()
image_alpha=0
char_player.moveable=false
char_player.image_alpha=0
char_player.image_blend=c_black
alarm[0]=40

fader.color=c_black
fader.alpha=1
Anim_Create(fader,"alpha",0,0,1,-1,40)

Player_SetLv(8)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())