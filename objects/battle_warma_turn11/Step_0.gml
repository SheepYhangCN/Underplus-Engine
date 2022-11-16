if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
if(timer=1){
BlueSoulControl_Warma(DIR.DOWN)
Battle_MakeBoneWallBottom(30,60,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=40){
BlueSoulControl_Warma(DIR.UP)
Battle_MakeBoneWallTop(30,60,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=80){
BlueSoulControl_Warma(DIR.LEFT)
Battle_MakeBoneWallLeft(30,60,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=120){
BlueSoulControl_Warma(DIR.RIGHT)
Battle_MakeBoneWallRight(30,60,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=160){
Battle_SetSoul(battle_soul_red)
var a=Battle_MakeLineBomb(320-64,320-64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320-64,320+64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320-64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320+64,45,40)
a.sprite_index=spr_rabbit_bomb
}
if(timer=200){
var a=Battle_MakeLineBomb(320-64,320-64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320-64,320+64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320-64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320+64,0,40)
a.sprite_index=spr_rabbit_bomb
}
if(timer=240){
var a=Battle_MakeLineBomb(320-64,320-64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320-64,320+64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320-64,45,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320+64,45,40)
a.sprite_index=spr_rabbit_bomb
}
if(timer=280){
var a=Battle_MakeLineBomb(320-64,320-64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320-64,320+64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320-64,0,40)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(320+64,320+64,0,40)
a.sprite_index=spr_rabbit_bomb
Battle_SetBoardSize(64,64,96,96,40)
}
if(timer=320){
alarm[0]=1
alarm[1]=1
}
if(timer=600){
Battle_SetBoardSize(64,64,240,320,80)
alarm[0]=-1
alarm[1]=-1
}
if(timer=680){
BlueSoulControl_Warma(DIR.LEFT)
}
if(timer=690){
Battle_MakeBoneWallLeft(40,30,5,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=760){
Battle_SetBoardSize(64,64,320,320,60)
BlueSoulControl_Warma(DIR.RIGHT)
Anim_Create(battle_soul,"x",0,0,battle_soul.x,320-battle_soul.x,40)
}
if(timer=800){
soultemp=true
Anim_Create(battle_enemy_warma,"x",0,0,battle_enemy_warma.x,-2*battle_enemy_warma.x,120)
Anim_Create(id,"_x",0,0,battle_enemy_warma.x,128-battle_enemy_warma.x,60)
}
if(timer=860){
moving=true
alarm[choose(2,3)]=1
}
if(timer=1460){
alarm[2]=-1
alarm[3]=-1
}
if(timer=1500){
alarm[4]=30
}
if(timer=1800){
moving=false
Anim_Create(battle_enemy_warma,"x",0,0,640+64,-64-320,80)
Anim_Create(id,"_x",0,0,_x,320-_x,80)
alarm[4]=-1
}
if(timer=1880){
Battle_SetBoardSize(64,64,320,128,40)
}
if(timer=1920){
soultemp=false
BlueSoulControl_Warma(DIR.RIGHT)
battle_soul.move=10
Battle_MakeBoneWallRight(30,30,5,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=1960){
fader.color=c_black
fader.alpha=1
audio_pause_sound(bgm_warma)
audio_play_sound(snd_cut,0,0)
Battle_SetBoardSize(64,64,64,64,20)
_x=114514
}
if(timer=2000){
fader.alpha=0
audio_resume_sound(bgm_warma)
BlueSoulControl_Warma(DIR.DOWN)
Battle_MakeBoneWallBottom(40,40,5,0,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneWallTop(40,40,5,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=2060){
fader.alpha=1
audio_pause_sound(bgm_warma)
audio_play_sound(snd_cut,0,0)
}
if(timer=2100){
fader.alpha=0
audio_resume_sound(bgm_warma)
BlueSoulControl_Warma(DIR.UP)
battle_soul.x=battle_board.x-32
battle_soul.y=battle_board.y-32
Battle_MakeBoneWallTop(40,40,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneWallLeft(40,40,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=2160){
fader.alpha=1
audio_pause_sound(bgm_warma)
audio_play_sound(snd_cut,0,0)
}
if(timer=2200){
fader.alpha=0
audio_resume_sound(bgm_warma)
Battle_SetSoul(battle_soul_red)
alarm[5]=1
}
if(timer=2500){
alarm[5]=-1
}
if(timer=2560){
Battle_SetBoardSize(8,8,8,8,40)
}
if(timer=2600){
alarm[6]=1
}
if(timer=3500){
alarm[6]=-1
}
if(timer=3620){
Battle_EndTurn()
}


if(timer>860&&timer<1800){
if(timer mod 100 = 0){
Battle_MakeWave(_x,_y,choose(1,2))
}
}

if(soultemp){battle_soul.x=320}

if(moving){
if(temp=false&&_x<512){_x+=3}
if(_x>=512){temp=true}
if(temp=true&&_x>128){_x-=3}
if(_x<=128){temp=false}
}