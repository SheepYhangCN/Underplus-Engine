if(timer<950&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
case 1:
	if(global.mode=2){var length=56}else{var length=50}
	BlueSoulControl_UtcSans(DIR.DOWN)
	Battle_MakeBoneWallBottom(30,length,170)
	break
case 50:
	if(global.mode=2){var length=56}else{var length=50}
	BlueSoulControl_UtcSans(DIR.UP)
	Battle_MakeBoneWallTop(30,length,120)
	break
case 100:
	if(global.mode=2){var length=56}else{var length=50}
	BlueSoulControl_UtcSans(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,length,70)
	break
case 150:
	if(global.mode=2){var length=56}else{var length=50}
	BlueSoulControl_UtcSans(DIR.RIGHT)
	Battle_MakeBoneWallRight(30,length,20)
	break
case 200:
	Battle_SetSoul(battle_soul_red)
	if(global.mode=2){var scale=2.5}else{var scale=2.2}
	Blaster_Create_Advanced(0,0,200,200,0,45-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,440,200,0,-45-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,200,440,0,135-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,440,440,0,-135-90,scale,2,0,25,spr_blaster,20,30)
	break
case 270:
	if(global.mode=2){var scale=2.8}else{var scale=2.5}
	Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,scale,2,0,25,spr_blaster,20,30)
	Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,scale,2,0,25,spr_blaster,20,30)
	break
case 340:
	BlueSoulControl_UtcSans(DIR.DOWN)
	Battle_MakeBoneWallBottom(40,30,5)
	break
case 390:
	BlueSoulControl_UtcSans(DIR.UP)
	Battle_MakeBoneWallTop(30,30,5)
	break
case 430:
	BlueSoulControl_UtcSans(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,30,5)
	break
case 470:
	BlueSoulControl_UtcSans(DIR.RIGHT)
	Battle_MakeBoneWallRight(30,30,5)
	break
case 520:
	Battle_SetSoul(battle_soul_red)
	Battle_MakeBone(battle_board.x,battle_board.y,140,0,0,1,0,0,3.6,1,360)
	Battle_MakeBone(battle_board.x,battle_board.y,140,0,0,2,0,0,-4,1,360)
	break
case 640:
	alarm[0]=1
	break
case 760:
	if(global.mode=2){
	alarm[1]=1}
	break
case 880:
	alarm[0]=-1
	alarm[1]=-1
	BlueSoulControl_UtcSans(choose(DIR.UP,DIR.DOWN))
	if(global.mode=2){
	Battle_MakeBoneBottom(battle_board.x-64,120,3,choose(1,2),0,0,1)
	Battle_MakeBoneBottom(battle_board.x-128,120,3,choose(1,2),0,0,1)
	Battle_MakeBoneBottom(battle_board.x-192,120,3,choose(1,2),0,0,1)}
	Battle_MakeBoneWallBottom(50,45,-1)
	Battle_MakeBoneWallTop(50,45,-1)
	Battle_MakeBoneWallLeft(50,45,-1)
	Battle_MakeBoneWallRight(50,45,-1)
	break
case 949:
	Battle_EndTurn()
	break
}