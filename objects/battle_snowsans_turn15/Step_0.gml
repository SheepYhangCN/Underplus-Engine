if(Battle_GetTurnTime()=80){
alarm[0]=-1
alarm[1]=-1
with(bone_box){
instance_destroy()}
with(battle_bullet_bone){
instance_destroy()}
Battle_MakeBoneWallBottom(55,35,25)
Battle_MakeBoneWallTop(55,35,25)
Battle_MakeBoneWallLeft(55,35,25)
Battle_MakeBoneWallRight(55,35,25)
}