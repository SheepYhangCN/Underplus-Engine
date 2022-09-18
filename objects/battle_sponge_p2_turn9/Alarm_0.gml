var a=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
BlueSoulControl(a)
if(a=DIR.UP){
Battle_MakeBoneWallTop(30,54,20,0,battle_bullet_bone,bone_body,spatula_end)
}
if(a=DIR.DOWN){
Battle_MakeBoneWallBottom(30,54,20,0,battle_bullet_bone,bone_body,spatula_end)
}
if(a=DIR.LEFT){
Battle_MakeBoneWallLeft(30,54,20,0,battle_bullet_bone,bone_body,spatula_end)
}
if(a=DIR.RIGHT){
Battle_MakeBoneWallRight(30,54,20,0,battle_bullet_bone,bone_body,spatula_end)
}
alarm[0]=55