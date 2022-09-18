if(Battle_GetTurnNumber()=0){
Battle_EndMenu()}
alarm[3]=30
if(Battle_GetTurnNumber()>4&&Battle_GetTurnNumber()<10){
if(instance_exists(menubone)){
instance_destroy(menubone)}
menubone=Battle_MakeMenuBone(72,254,75,0,0,0,1,0,2.5,1,-1,battle_bullet_bone,bone_body,spatula_end)}