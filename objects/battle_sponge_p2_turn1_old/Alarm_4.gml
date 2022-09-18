var a=Battle_MakeFriendlyPellet(-32,battle_soul.y,114514,battle_soul.y,choose(1,2),10,20,-90,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,80,10)

/*var a=choose(1,2)
Battle_MakeBoneBottom(battle_board.x-240,120,3,a,0,0,1)
Battle_MakeBoneBottom(battle_board.x+240,120,-3,a,0,0,1)