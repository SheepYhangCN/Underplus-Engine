if(timer<1140&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,80,270,90,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,80,370,90,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,270,80,0,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,370,80,0,10,2,2)
		
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,540,270,-90,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,540,370,-90,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,270,480,180,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,370,480,180,10,2,2)
		break
	case 50:
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,200,45,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,200,-45,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,440,135,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,440,-135,10,2,2)
		break
	case 100:
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,200,0,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,440,180,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,battle_board.y,90,10,2,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,battle_board.y,-90,10,2,2)
		break
	case 150:
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,200,0,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,440,180,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,battle_board.y,90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,battle_board.y,-90,10,1,2)
		
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,200,45,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,200,-45,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,440,135,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,440,-135,10,1,2)
		/*Battle_SetSoul(battle_soul_blue)
		audio_play_sound(snd_ding,0,0)
		alarm[choose(1,2,3,4)]=5*/
		break
	case 200:
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,270,90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,370,90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,270,200,0,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,370,200,0,10,1,2)
		
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,270,-90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,370,-90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,270,440,180,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,370,440,180,10,1,2)
		
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,200,0,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,440,180,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,200,battle_board.y,90,10,1,2)
		Blaster_Create_New(battle_bullet_gb_new,0,0,0,440,battle_board.y,-90,10,1,2)
		break
	case 300:
		/*alarm[1]=-1
		alarm[2]=-1
		alarm[3]=-1
		alarm[4]=-1
		Battle_SetSoul(battle_soul_red)
		audio_play_sound(snd_ding,0,0)*/
		bluebone=Battle_MakeBone(battle_board.x,battle_board.x,181,0,0,1,0,0,1,-1)
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
		titr_body.image_index=1
		a=instance_create_depth(420, 110, 0, battle_dialog_enemy)
		if(global.language=0){
		a.text="{font 4}{scale 1}{voice 3}{titr_face 1}I've been wondering how&stupid it is to show their&strongest attack at first.{pause}{end_turn}{end}"
		}else if(global.language=1){
		a.text="{font 5}{speed 5}{scale 1}{voice 3}{titr_face 1}我一直在想把最强攻击&放在开头的人是有多蠢。{pause}{end_turn}{end}"
		break
}}
