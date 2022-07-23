if(timer<580&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		Blaster_Create_Advanced(0,0,100,290,0,90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,100,350,0,90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,290,100,0,0-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,350,100,0,0-90,2,2,0,40,spr_peanut_blaster,30,10)
		
		Blaster_Create_Advanced(0,0,540,270,0,-90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,540,370,0,-90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,270,480,0,180-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,370,480,0,180-90,2,2,0,40,spr_peanut_blaster,30,10)
		break
	case 90:
		Blaster_Create_Advanced(0,0,200,200,0,45-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,200,0,-45-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,440,0,135-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,440,0,-135-90,2,2,0,40,spr_peanut_blaster,30,10)
		break
	case 180:
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,2,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,2,2,0,40,spr_peanut_blaster,30,10)
		break
	case 270:
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,1,2,0,40,spr_peanut_blaster,30,10)
		
		Blaster_Create_Advanced(0,0,200,200,0,45-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,200,0,-45-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,440,0,135-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,440,0,-135-90,1,2,0,40,spr_peanut_blaster,30,10)
		break
	case 360:
		Blaster_Create_Advanced(0,0,200,270,0,90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,370,0,90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,270,200,0,0-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,370,200,0,0-90,1,2,0,40,spr_peanut_blaster,30,10)
		
		Blaster_Create_Advanced(0,0,440,270,0,-90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,370,0,-90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,270,440,0,180-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,370,440,0,180-90,1,2,0,40,spr_peanut_blaster,30,10)
		
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,1,2,0,40,spr_peanut_blaster,30,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,1,2,0,40,spr_peanut_blaster,30,10)
		break
	case 450:
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,4,2,0,40,spr_peanut_blaster,30,15)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,4,2,0,40,spr_peanut_blaster,30,15)
		break
	case 579:
		Battle_EndTurn()
		break
}
