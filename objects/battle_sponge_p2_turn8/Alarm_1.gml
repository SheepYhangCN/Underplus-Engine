var a=Battle_MakeFriendlyPellet_Old(-32,-32,battle_soul.x+96+114514,battle_soul.y+96+114514,0,50,20,-135,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.x-96+32,10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.y-96+32,10)
var a=Battle_MakeFriendlyPellet_Old(-32,room_height+32,battle_soul.x+96+114514,battle_soul.y-96-114514,0,50,20,-45,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.x-96+32,10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_soul.y+96-(room_height+32),10)
var a=Battle_MakeFriendlyPellet_Old(room_width+32,-32,battle_soul.x-96-114514,battle_soul.y+96+114514,0,50,20,135,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_soul.x+96-(room_width+32),10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.y-96+32,10)
var a=Battle_MakeFriendlyPellet_Old(room_width+32,room_height+32,battle_soul.x-96-114514,battle_soul.y-96-114514,0,50,20,45,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_soul.x+96-(room_width+32),10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_soul.y+96-(room_height+32),10)

var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,battle_soul.x+96+114514,battle_soul.y,0,50,20,-90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.x-96+32,10)
var a=Battle_MakeFriendlyPellet_Old(room_width+32,battle_soul.y,battle_soul.x-96-114514,battle_soul.y,0,50,20,90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_soul.x+96-(room_width+32),10)
var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,battle_soul.y+96+114514,0,50,20,180,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.y-96+32,10)
var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,room_height+32,battle_soul.x,battle_soul.y-96-114514,0,50,20,0,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_soul.y+96-(room_height+32),10)
alarm[0]=65