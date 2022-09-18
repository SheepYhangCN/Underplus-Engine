Battle_MakeBoneLeft(battle_board.y-battle_board.up,40,2,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
Battle_MakeBoneRight(battle_board.y+battle_board.down,40,-2,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
var a=Battle_MakeFriendlyPellet(-32,battle_soul.y,114514,battle_soul.y,choose(1,2),10,20,-90,1,true,battle_bullet_friendlypellet,spr_spatula)
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,80,10)
alarm[0]=40