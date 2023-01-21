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
	Battle_MakeBoneTop(battle_board.x+128,55,-4,0,0,0,1)
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
	Battle_MakeBlaster(battle_board.x-60,0,battle_board.x-60,280,0,0,10,1,2,30,20,0)
	break
case 1970:
	Battle_MakeBlaster(battle_board.x-40,0,battle_board.x-40,280,0,0,10,1,2,30,20,0)
	break
case 1980:
	Battle_MakeBlaster(battle_board.x-20,0,battle_board.x-20,280,0,0,10,1,2,30,20,0)
	break
case 1990:
	Battle_MakeBlaster(battle_board.x,0,battle_board.x,280,0,0,10,1,2,30,20,0)
	break
case 2000:
	Battle_MakeBlaster(battle_board.x+20,0,battle_board.x+20,280,0,0,10,1,2,30,20,0)
	break
case 2010:
	Battle_MakeBlaster(battle_board.x+30,0,battle_board.x+30,280,0,0,10,1,2,30,20,0)
	break
case 2060:
	Battle_MakeBlaster(battle_board.x+60,0,battle_board.x+60,280,0,0,10,1,2,30,20,0)
	break
case 2070:
	Battle_MakeBlaster(battle_board.x+40,0,battle_board.x+40,280,0,0,10,1,2,30,20,0)
	break
case 2080:
	Battle_MakeBlaster(battle_board.x+20,0,battle_board.x+20,280,0,0,10,1,2,30,20,0)
	break
case 2090:
	Battle_MakeBlaster(battle_board.x,0,battle_board.x,280,0,0,10,1,2,30,20,0)
	break
case 2100:
	Battle_MakeBlaster(battle_board.x-20,0,battle_board.x-20,280,0,0,10,1,2,30,20,0)
	break
case 2110:
	Battle_MakeBlaster(battle_board.x-30,0,battle_board.x-30,280,0,0,10,1,2,30,20,0)
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
}