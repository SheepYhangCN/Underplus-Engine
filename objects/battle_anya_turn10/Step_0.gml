if(timer<1550&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		alarm[0]=1
		break
	case 390:
		targetx=80
		Battle_SetSoul(battle_soul_red)
		Battle_SetBoardSize(64,64,240,240,15)
		alarm[0]=-1
		alarm[1]=15
		break
	case 870:
		Battle_SetBoardSize(64,64,64,64,10)
		Blaster_Create_Advanced(0,0,200,200,0,45-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,200,0,-45-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,440,0,135-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,440,0,-135-90,2,2,0,40,spr_peanut_blaster,30,10)
		break
	case 960:
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,2,2,0,40,spr_peanut_blaster,30,10)
		break
	case 1040:
		Battle_SetBoardSize(48,48,48,48,10)
		Battle_MakeBone(battle_board.x,battle_board.y,120,0,0,1,0,0,2,1,-1,battle_bullet_bone,pencil_body,pencil_end)
		alarm[3]=1
		break
	case 1520:
		alarm[3]=-1
		break
	case 1549:
		Battle_EndTurn()
		break
}
