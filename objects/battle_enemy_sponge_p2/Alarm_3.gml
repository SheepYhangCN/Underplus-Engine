if(Battle_GetState()=BATTLE_STATE.MENU&&Battle_GetTurnNumber()<10){
Battle_MakeMenuBone(0,room_height,80,4,0,0,1,90,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
Battle_MakeMenuBone(room_width,room_height,80,-4,0,0,1,90,0,1,-1,battle_bullet_bone,bone_body,spatula_end)

var angle=random_range(155,25)
menuspatula=Battle_MakeFriendlyPellet(0,0,battle_soul.x-lengthdir_x(114514,angle),battle_soul.y-lengthdir_y(114514,angle),0,35,20,angle+90,1,true,battle_bullet_friendlypellet,spr_spatula)
Anim_Create(menuspatula,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,battle_soul.x+lengthdir_x(-400,angle+180),battle_soul.x+lengthdir_x(150,angle)-(battle_soul.x+lengthdir_x(-400,angle+180)),10)
Anim_Create(menuspatula,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,battle_soul.y+lengthdir_y(-400,angle+180),battle_soul.y+lengthdir_y(150,angle)-(battle_soul.y+lengthdir_y(-400,angle+180)),10)
if(global.mode=GAME_MODE.HARD){
alarm[3]=70}
if(global.mode=GAME_MODE.NORMAL){
alarm[3]=90}
if(global.mode=GAME_MODE.EASY){
alarm[3]=110}
}