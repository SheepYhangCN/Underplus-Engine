if(timer<600&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		Titr_BlueSoulControl(DIR.DOWN)
		Battle_MakeBoneWallBottom(30,55,20)
		if(global.mode=2){Battle_MakeBoneWallTop(30,55,20)}
		break
	case 60:
		Battle_SetSoul(battle_soul_red)
		basey=battle_board.y
		temp=0
		alarm[0]=1
		break
	case 240:
		alarm[0]=-1
		break
	case 260:
		Blaster_Create_Advanced(0,0,battle_board.x-64,battle_board.y-50,0,0,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x-50,battle_board.y-64,0,-90,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x+64,battle_board.y+50,0,180,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x+50,battle_board.y+64,0,90,gbscale,2,0,30,spr_blaster,20,15)
		break
	case 320:
		Blaster_Create_Advanced(0,0,240,240,0,45-90,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,400,240,0,-45-90,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,240,400,0,135-90,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,400,400,0,-135-90,gbscale,2,0,30,spr_blaster,20,15)
		break
	case 380:
		Blaster_Create_Advanced(0,0,battle_board.x-64,battle_board.y-50,0,0,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x-50,battle_board.y-64,0,-90,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x+64,battle_board.y+50,0,180,gbscale,2,0,30,spr_blaster,20,15)
		Blaster_Create_Advanced(0,0,battle_board.x+50,battle_board.y+64,0,90,gbscale,2,0,30,spr_blaster,20,15)
		break
	case 440:
		Blaster_Create_Advanced(0,0,200,battle_board.y,0,90-90,4,2,0,40,spr_blaster,20,35)
		Blaster_Create_Advanced(0,0,440,battle_board.y,0,-90-90,4,2,0,40,spr_blaster,20,35)
		break
	case 599:
		titr_body.image_index=1
		a=instance_create_depth(420, 110, 0, battle_dialog_enemy)
		if(global.language=0){
		a.text="{font 3}{scale 1}{voice 3}{titr_face 1}huh.&{sleep 15}always wondered why people&never use their strongest&attack first.{pause}{end_turn}{end}"
		}else if(global.language=1){
		a.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 1}哈。&{sleep 15}我总是在想为什么&没人开局放大呢。{pause}{end_turn}{end}"
		break
}}
