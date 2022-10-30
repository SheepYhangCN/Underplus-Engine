if(timer<600&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		BlueSoulControl_Titr(DIR.DOWN)
		Battle_MakeBoneWallBottom(30,55,20)
		if(global.mode=GAME_MODE.HARD){Battle_MakeBoneWallTop(30,55,20)}
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
		Battle_MakeBlaster(0,0,battle_board.x-64,battle_board.y-50,0,0+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x-50,battle_board.y-64,0,-90+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x+64,battle_board.y+50,0,180+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x+50,battle_board.y+64,0,90+90,20,gbscale,2,15,30,0)
		break
	case 320:
		Battle_MakeBlaster(0,0,240,240,0,45,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,400,240,0,-45,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,240,400,0,135,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,400,400,0,-135,20,gbscale,2,15,30,0)
		break
	case 380:
		Battle_MakeBlaster(0,0,battle_board.x-64,battle_board.y-50,0,0+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x-50,battle_board.y-64,0,-90+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x+64,battle_board.y+50,0,180+90,20,gbscale,2,15,30,0)
		Battle_MakeBlaster(0,0,battle_board.x+50,battle_board.y+64,0,90+90,20,gbscale,2,15,30,0)
		break
	case 440:
		Battle_MakeBlaster(0,0,200,battle_board.y,0,90,20,4,2,35,40,0)
		Battle_MakeBlaster(0,0,440,battle_board.y,0,-90,20,4,2,35,40,0)
		break
	case 599:
		titr_body.image_index=1
		a=instance_create_depth(420, 110, 0, battle_dialog_enemy)
		if(global.language=LANGUAGE.ENGLISH){
		a.text="{font 3}{scale 1}{voice 3}{titr_face 1}huh.&{sleep 15}always wondered why people&never use their strongest&attack first.{pause}{end_turn}{end}"
		}else if(global.language=LANGUAGE.SCHINESE){
		a.text="{font 3}{speed 5}{scale 1}{voice 3}{titr_face 1}哈。&{sleep 15}我总是在想为什么&没人开局放大呢。{pause}{end_turn}{end}"
		break
}}
