if(timer<1140&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		Blaster_Create_Advanced(0,0,80,270,0,90-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,80,370,0,90-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,270,80,0,0-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,370,80,0,0-90,2,2,0,20,spr_gb_ink,10,10)
		
		Blaster_Create_Advanced(0,0,540,270,0,-90-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,540,370,0,-90-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,270,480,0,180-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,370,480,0,180-90,2,2,0,20,spr_gb_ink,10,10)
		break
	case 50:
		Blaster_Create_Advanced(0,0,200,200,0,45-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,200,0,-45-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,440,0,135-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,440,0,-135-90,2,2,0,20,spr_gb_ink,10,10)
		break
	case 100:
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,2,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,2,2,0,20,spr_gb_ink,10,10)
		break
	case 150:
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,1,2,0,20,spr_gb_ink,10,10)
		
		Blaster_Create_Advanced(0,0,200,200,0,45-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,200,0,-45-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,440,0,135-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,440,0,-135-90,1,2,0,20,spr_gb_ink,10,10)
		/*Battle_SetSoul(battle_soul_blue)
		audio_play_sound(snd_ding,0,0)
		alarm[choose(1,2,3,4)]=5*/
		break
	case 200:
		Blaster_Create_Advanced(0,0,200,270,0,90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,370,0,90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,270,200,0,0-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,370,200,0,0-90,1,2,0,20,spr_gb_ink,10,10)
		
		Blaster_Create_Advanced(0,0,440,270,0,-90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,370,0,-90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,270,440,0,180-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,370,440,0,180-90,1,2,0,20,spr_gb_ink,10,10)
		
		Blaster_Create_Advanced(0,0,battle_board.x,200,0,0-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,battle_board.x,440,0,180-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,1,2,0,20,spr_gb_ink,10,10)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,1,2,0,20,spr_gb_ink,10,10)
		break
	case 300:
		/*alarm[1]=-1
		alarm[2]=-1
		alarm[3]=-1
		alarm[4]=-1
		Battle_SetSoul(battle_soul_red)
		audio_play_sound(snd_ding,0,0)*/
		bluebone=Battle_MakeBone(battle_board.x,battle_board.y,181,0,0,1,0,0,1,1,-1)
		alarm[5]=1
		alarm[6]=1
		break
	case 500:
		alarm[5]=-1
		alarm[6]=-1
		alarm[7]=1
		alarm[9]=1
		break
	case 750:
		alarm[7]=-1
		alarm[9]=-1
		instance_destroy(bluebone)
		break
	case 810:
		basey=battle_board.y
		basex=battle_board.x
		temp=0
		temp1=0
		alarm[8]=20
		alarm[10]=1
		break
	case 1110:
		alarm[8]=-1
		alarm[10]=-1
		break
	case 1139:
	Battle_EndTurn()
	break
}
