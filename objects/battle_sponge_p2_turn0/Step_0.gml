timer+=1
switch timer{
case 120:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_board.y-48,114514,battle_board.y-48,0,780,15,-90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,128,10)
	break
case 220:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_board.y+48,114514,battle_board.y+48,0,680,15,-90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,128,10)
	break
case 320:
	var a=Battle_MakeFriendlyPellet_Old(room_width+32,battle_board.y,-114514,battle_board.y,0,580,15,90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,-128,10)
	break
case 420:
	var a=Battle_MakeFriendlyPellet_Old(battle_board.x-48,room_height+32,battle_board.x-48,-114514,0,480,15,0,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,-80,10)
	var a=Battle_MakeFriendlyPellet_Old(battle_board.x+48,room_height+32,battle_board.x+48,-114514,0,480,15,0,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,-80,10)
	break
case 520:
	var a=Battle_MakeFriendlyPellet_Old(battle_board.x,-32,battle_board.x,114514,0,380,15,180,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,72,10)
	break
case 620:
	var a=Battle_MakeFriendlyPellet_Old(-32,-32,battle_board.x+96+114514,battle_board.y+96+114514,0,300,15,-135,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_board.x-96+32,10)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_board.y-96+32,10)
	var a=Battle_MakeFriendlyPellet_Old(-32,room_height+32,battle_board.x+96+114514,battle_board.y-96-114514,0,300,15,-45,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_board.x-96+32,10)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_board.y+96-(room_height+32),10)
	var a=Battle_MakeFriendlyPellet_Old(room_width+32,-32,battle_board.x-96-114514,battle_board.y+96+114514,0,300,15,135,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_board.x+96-(room_width+32),10)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_board.y-96+32,10)
	var a=Battle_MakeFriendlyPellet_Old(room_width+32,room_height+32,battle_board.x-96-114514,battle_board.y-96-114514,0,300,15,45,1,true,battle_bullet_friendlypellet_old,spr_spatula)
	Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_board.x+96-(room_width+32),10)
	Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_board.y+96-(room_height+32),10)
	break
case 720:
	Blaster_Create_Advanced(battle_board.x,0,battle_board.x,200,-90,-90,1,1,0,25,spr_jellyfish_blaster,200,30)
	Blaster_Create_Advanced(battle_board.x,room_height,battle_board.x,440,90,90,1,1,0,25,spr_jellyfish_blaster,200,30)
	Blaster_Create_Advanced(0,battle_board.y,200,battle_board.y,0,0,1,1,0,25,spr_jellyfish_blaster,200,30)
	Blaster_Create_Advanced(room_width,battle_board.y,440,battle_board.y,-180,-180,1,1,0,25,spr_jellyfish_blaster,200,30)
	break
case 800:
	fader.color=c_black
	fader.alpha=1
	break
case 880:
	fader.alpha=0
	break
case 1000:
	BlueSoulControl(DIR.DOWN)
	Battle_MakeBoneWallBottom(30,54,180,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1050:
	BlueSoulControl(DIR.UP)
	Battle_MakeBoneWallTop(30,54,130,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1100:
	BlueSoulControl(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,54,80,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1150:
	BlueSoulControl(DIR.RIGHT)
	Battle_MakeBoneWallRight(30,54,30,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1200:
	Battle_SetSoul(battle_soul_red)
	break
case 1210:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1230:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1250:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1270:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1290:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1310:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1330:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1350:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1370:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1390:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1410:
	var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,0,20,10,-90,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	var a=Battle_MakeFriendlyPellet_Old(battle_soul.x,-32,battle_soul.x,114514,0,20,10,180,0,true,battle_bullet_friendlypellet_old,spr_spatula)
	break
case 1450:
	Blaster_Create_Advanced(0,0,200,200,45-90,45-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,0,440,200,-45-90,-45-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(0,room_height,200,440,135-90,135-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,room_height,440,440,-135-90,-135-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	break
case 1500:
	Blaster_Create_Advanced(battle_board.x,0,battle_board.x,200,0-90,0-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(battle_board.x,room_height,battle_board.x,440,180-90,180-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(0,battle_board.y,200,battle_board.y,90-90,90-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,battle_board.y,440,battle_board.y,-90-90,-90-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	break
case 1550:
	Blaster_Create_Advanced(0,0,200,200,45-90,45-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,0,440,200,-45-90,-45-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(0,room_height,200,440,135-90,135-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,room_height,440,440,-135-90,-135-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	break
case 1600:
	Blaster_Create_Advanced(battle_board.x,0,battle_board.x,200,0-90,0-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(battle_board.x,room_height,battle_board.x,440,180-90,180-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(0,battle_board.y,200,battle_board.y,90-90,90-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	Blaster_Create_Advanced(room_width,battle_board.y,440,battle_board.y,-90-90,-90-90,1,1,0,25,spr_jellyfish_blaster,20,30)
	break
case 1720:
	Battle_EndTurn()
	break
}