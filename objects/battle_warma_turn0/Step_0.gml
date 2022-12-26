if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
if(timer=1){
BlueSoulControl_Warma(DIR.DOWN)
Battle_MakeBoneWallBottom(20,32,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=30){
Battle_SetSoul(battle_soul_red)
//BlueSoulControl_Warma(DIR.UP)
Battle_MakeBoneWallTop(20,56,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=60){
Battle_SetSoul(battle_soul_red)
var a=Battle_MakeLineBomb(320,320+random_range(-16,16),random(360),30,1,0,1,1,10,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=100){
var a=Battle_MakeLineBomb(320,320+random_range(-16,16),random(360),30,1,0,1,1,10,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=140){
var a=Battle_MakeLineBomb(320+random_range(-16,16),320,random(360),30,1,0,1,1,10,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=180){
var a=Battle_MakeLineBomb(320+random_range(-16,16),320,random(360),30,1,0,1,1,10,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=270){
//BlueSoulControl_Warma(DIR.LEFT)
Battle_MakeBoneWallLeft(20,64,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=300){
//BlueSoulControl_Warma(DIR.RIGHT)
Battle_MakeBoneWallRight(20,64,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=330){
//BlueSoulControl_Warma(DIR.DOWN)
Battle_MakeBoneWallBottom(20,64,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=360){
//BlueSoulControl_Warma(DIR.UP)
Battle_MakeBoneWallTop(20,64,10,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=400){
Battle_SetSoul(battle_soul_red)
var a=Battle_MakeLineBomb(320,320,0,25,2,0,1,1,10,40)
a.sprite_index=spr_rabbit_bomb
}
if(timer=480){
Battle_MakeBoneWallBottom(100,55,-1,0,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneWallTop(100,55,-1,0,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneWallLeft(100,55,-1,0,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneWallRight(100,55,-1,0,battle_bullet_bone,bone_body,spr_luotuo_end)
}
if(timer=600){
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 0}I'm,{sleep 15} always have&hope for you.{pause}{clear}{warma_face 3}Can you just, {sleep 15}back......{pause}{warma_face 0}{end_turn}{end}"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{speed 4}{warma_face 0}我对你, {sleep 15}&可是一直抱着希望的。{pause}{clear}{warma_face 3}可以, {sleep 15}回来吗......{pause}{warma_face 0}{end_turn}{end}"}
}