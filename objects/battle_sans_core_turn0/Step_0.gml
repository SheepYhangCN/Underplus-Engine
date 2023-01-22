if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}

switch timer{
case 1500:
	fader.color=c_black
	Fader_Fade(0,1,60)
	break
case 1580:
	battle_enemy_sans_core._face=0
	with(battle_dialog_enemy){instance_destroy()}
	fader.alpha=0
	BlueSoulControl_SansCore(DIR.DOWN)
	Battle_MakeBoneWallBottom(20,55,10)
	Battle_MakeBoneTop(battle_board.x+128,60,-4,0,0,0,1)
	break
case 1640:
	BlueSoulControl_SansCore(DIR.LEFT,15)
	Battle_MakeBoneTwoH(battle_board.x-24,battle_board.y-64,3,20,1)
	Battle_MakeBoneTwoH(battle_board.x-24,battle_board.y+64,-3,20,1)
	break
case 1680:
	BlueSoulControl_SansCore(DIR.RIGHT,15)
	Battle_MakeBoneTwoH(battle_board.x+24,battle_board.y-64,3,20,1)
	Battle_MakeBoneTwoH(battle_board.x+24,battle_board.y+64,-3,20,1)
	break
case 1720:
	Battle_SetSoul(battle_soul_red)
	Battle_MakeBoneWallLeft(20,53,10)
	Battle_MakeBoneWallRight(20,53,10)
	break
case 1760:
	BlueSoulControl_SansCore(DIR.UP,15)
	Battle_MakeBoneTwoV(battle_board.x-64,battle_board.y-24,3,20,1)
	Battle_MakeBoneTwoV(battle_board.x+64,battle_board.y-24,-3,20,1)
	break
case 1800:
	BlueSoulControl_SansCore(DIR.DOWN,15)
	Battle_MakeBoneTwoV(battle_board.x-64,battle_board.y+24,3,20,1)
	Battle_MakeBoneTwoV(battle_board.x+64,battle_board.y+24,-3,20,1)
	break
case 1840:
	BlueSoulControl_SansCore(DIR.UP)
	Battle_MakeBlaster(0,battle_board.y-56,battle_board.x-128,battle_board.y-56,90,90,10,2,2,40,10,0)
	Battle_MakeBlaster(battle_board.x-56,0,battle_board.x-56,280,-0,0,10,2,2,40,10,0)
	Battle_MakeBlaster(battle_board.x+56,0,battle_board.x+56,280,-0,0,10,2,2,40,10,0)
	break
case 1890:
	BlueSoulControl_SansCore(DIR.DOWN)
	Battle_MakeBlaster(0,battle_board.y+56,battle_board.x-128,battle_board.y+56,90,90,10,2,2,40,10,0)
	break
case 1940:
	Battle_SetSoul(battle_soul_red)
	break
case 1960:
	Battle_MakeBlaster(battle_board.x-60,0,battle_board.x-60,240,0,0,10,1,2,30,20,0)
	break
case 1970:
	Battle_MakeBlaster(battle_board.x-40,0,battle_board.x-40,240,0,0,10,1,2,30,20,0)
	break
case 1980:
	Battle_MakeBlaster(battle_board.x-20,0,battle_board.x-20,240,0,0,10,1,2,30,20,0)
	break
case 1990:
	Battle_MakeBlaster(battle_board.x,0,battle_board.x,240,0,0,10,1,2,30,20,0)
	break
case 2000:
	Battle_MakeBlaster(battle_board.x+20,0,battle_board.x+20,240,0,0,10,1,2,30,20,0)
	break
case 2010:
	Battle_MakeBlaster(battle_board.x+30,0,battle_board.x+30,240,0,0,10,1,2,30,20,0)
	break
case 2060:
	Battle_MakeBlaster(battle_board.x+60,0,battle_board.x+60,240,0,0,10,1,2,30,20,0)
	break
case 2070:
	Battle_MakeBlaster(battle_board.x+40,0,battle_board.x+40,240,0,0,10,1,2,30,20,0)
	break
case 2080:
	Battle_MakeBlaster(battle_board.x+20,0,battle_board.x+20,240,0,0,10,1,2,30,20,0)
	break
case 2090:
	Battle_MakeBlaster(battle_board.x,0,battle_board.x,240,0,0,10,1,2,30,20,0)
	break
case 2100:
	Battle_MakeBlaster(battle_board.x-20,0,battle_board.x-20,240,0,0,10,1,2,30,20,0)
	break
case 2110:
	Battle_MakeBlaster(battle_board.x-30,0,battle_board.x-30,240,0,0,10,1,2,30,20,0)
	break
case 2160:
	alarm[5]=1
	break
case 2320:
	alarm[5]=-1
	break
case 2380:
	//Battle_SetBoardSize(64,64,128,128,40)
	BlueSoulControl_SansCore(DIR.DOWN)
	Battle_MakeBoneWallTop(10,45,800)
	alarm[0]=60
	alarm[1]=120
	alarm[2]=240
	break
case 3180:
	alarm[0]=-1
	alarm[2]=-1
	alarm[3]=60
	alarm[4]=10
	Battle_SetSoul(battle_soul_red)
	Anim_Create(battle_board,"x",0,0,320,176,300)
	Anim_Create(battle_board,"x",0,0,320+176,-176-176,300,301)
	break
case 3800:
	alarm[1]=-1
	alarm[3]=-1
	Battle_SetBoardSize(64,64,64,560-144,60)
	with(battle_bullet_bone){
	Anim_Create(id,"length",ANIM_TWEEN.BACK,ANIM_EASE.OUT,42,-27,20)
	if(a=1){Anim_Create(id,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,y,13.5,20)}
	if(a=2){Anim_Create(id,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,y,-13.5,20)}}
	var b=Battle_MakePlatform(220,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30,20)
	var b=Battle_MakePlatform(320,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30,40)
	var b=Battle_MakePlatform(420,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30,60)
	var b=Battle_MakePlatform(520,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30,80)
	alarm[7]=1
	break
case 3860:
	alarm[6]=1
	BlueSoulControl_SansCore(DIR.DOWN)
	Anim_Create(battle_board,"left",0,0,battle_board.left,-(560-144),300)
	break
case 4120:
	alarm[3]=1
	alarm[4]=-1
	alarm[6]=-1
	alarm[7]=-1
	alarm[8]=41
	alarm[9]=60
	alarm[10]=30
	Anim_Destroy(battle_bullet_bone)
	Anim_Destroy(battle_board)
	with(battle_platform){
		auto_destroy=true
		Anim_Create(id,"y",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,y,140,30)}
	Battle_SetBoardSize(64,64,240,240,40)
	Anim_Create(battle_board,"x",0,0,battle_board.x,320-battle_board.x,40)
	Battle_SetSoul(battle_soul_red)
	break
case 4720:
	battle_enemy_sans_core.sweat=1
	//alarm[3]=-1
	alarm[8]=-1
	alarm[9]=-1
	alarm[10]=-1
	Battle_SetBoardSize(64,64,96,96,60)
	break
case 4780:
	Battle_MakeBoneWallBottom(1,20,770)
	bone1=Battle_MakeBone(320,320+64,0,0,0,0,0,90,0,1)
	bone1.auto_destroy=false
	Anim_Create(bone1,"length",0,0,0,130,20)
	bone2=Battle_MakeBone(320,320-64,0,0,0,0,0,90,0,1)
	bone2.auto_destroy=false
	Anim_Create(bone2,"length",0,0,0,50,20)
	var b=Battle_MakePlatform(320+48,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30)
	var b=Battle_MakePlatform(320-48,0)
	b.auto_destroy=false
	Anim_Create(b,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,0,340,30)
	break
case 4900:
	BlueSoulControl_SansCore(DIR.DOWN)
	alarm[1]=20
	alarm[2]=-1
	alarm[11]=1
	break
case 5550:
	//alarm[3]=1
	alarm[11]=-1
	with(battle_platform){
		auto_destroy=true
		Anim_Create(id,"y",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,y,140,30)}
	bone1.auto_destroy=true
	bone2.auto_destroy=true
	Anim_Create(bone1,"length",0,0,bone1.length,-bone1.length,30)
	Anim_Create(bone2,"length",0,0,bone2.length,-bone2.length,30)
	Battle_SetSoul(battle_soul_red)
	_alarm=true
	alarm[0]=30
	break
case 6280:
	alarm[1]=-1
	//alarm[3]=-1
	Battle_SetBoardSize(64,64,64,64,60)
	roundboard=Battle_CreateBoardExtraRoundrect(320,320,128,0)
	break
case 6340:
	Battle_SetBoardSize(32,32,32,32,1)
	Anim_Create(roundboard,"precision",0,0,0,64,40)
	break
case 6381:
	_round=Battle_CreateBoardExtraCircle(320,320,64)
	instance_destroy(roundboard)
	Battle_MakeBoneWallRound_Rotate(10,85,0,10,760)
	bone=Battle_MakeBone(320,320,0,0,0,0,1,0,3,0)
	Anim_Create(bone,"length",0,0,0,100,60)
	break
case 7140:
	alarm[0]=-1
	alarm[3]=-1
	bone.auto_destroy=true
	Anim_Create(bone,"length",0,0,bone.length,-bone.length,40)
	break
case 7180:
	with(battle_bone_rd){instance_destroy()}
	instance_destroy(oRoundBone)
	roundboard=Battle_CreateBoardExtraRoundrect(320,320,128,64)
	instance_destroy(_round)
	Anim_Create(roundboard,"precision",0,0,64,-64,40)
	battle_enemy_sans_core.sweat=2
	break
case 7221:
	Battle_SetBoardSize(64,64,64,64,1)
	instance_destroy(roundboard)
	alarm[1]=1
	alarm[2]=10
	break
case 7920:
	alarm[2]=-1
	alarm[5]=-1
	alarm[0]=1
	Battle_SetSoul(battle_soul_red)
	break
case 8400:
	alarm[0]=-1
	alarm[1]=-1
	alarm[6]=30
	final=true
	break
case 8700:
	alarm[6]=-1
	roundboard=Battle_CreateBoardExtraRoundrect(320,320,128,0)
	Battle_SetBoardSize(32,32,32,32,1)
	Anim_Create(roundboard,"precision",0,0,0,64,20)
	break
case 8730:
	bone_1=Battle_MakeBone(320,320,0,0,0,0,1,0,3,0)
	Anim_Create(bone_1,"length",0,0,0,128,60)
	bone_2=Battle_MakeBone(320,320,0,0,0,1,1,0,3.5,0)
	Anim_Create(bone_2,"length",0,0,0,128,60)
	bone_3=Battle_MakeBone(320,320,0,0,0,2,1,0,-3,0)
	Anim_Create(bone_3,"length",0,0,0,128,60)
	break
case 9150:
	bone_1.auto_destroy=true
	bone_2.auto_destroy=true
	bone_3.auto_destroy=true
	Anim_Create(bone_1,"length",0,0,bone_1.length,-bone_1.length,50)
	Anim_Create(bone_2,"length",0,0,bone_2.length,-bone_2.length,50)
	Anim_Create(bone_3,"length",0,0,bone_3.length,-bone_3.length,50)
	Anim_Create(roundboard,"precision",0,0,64,-64,30)
	break
case 9180:
	Battle_SetBoardSize(64,64,64,64,1)
	instance_destroy(roundboard)
	break
case 9185:
	Battle_SetBoardSize(16,16,16,16,35)
	break
case 9220:
	alarm[7]=1
	battle_enemy_sans_core.sweat=3
	break
case 10350:
	alarm[7]=-1
	final=false
	battle_enemy_sans_core._face_spr=spr_sans_face
	battle_enemy_sans_core._face=0
	break
}

with(battle_bullet_bone){
if(variable_instance_exists(id,"a")&&a=3&&x!=(((battle_board.x - battle_board.left) + (length / 2)) + 5)&&!Anim_IsExists(id,"x")){Anim_Create(id,"x",0,0,x,560-144,300)}
}
if(fader.alpha!=0){instance_destroy(battle_dialog_enemy)}
if(final){battle_enemy_sans_core._face_spr=spr_sans_blue_eyes;battle_enemy_sans_core._face+=1}