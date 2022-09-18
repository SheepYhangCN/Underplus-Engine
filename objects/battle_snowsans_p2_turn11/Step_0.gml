if(timer<=2970&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		targetx=80
		alarm[0]=1
		break
	case 500:
		Battle_SetBoardSize(64,64,64,64,10)
		Battle_SetSoul(battle_soul_blue)
		alarm[3]=15
		break
	case 620:
		Battle_SetBoardSize(64,64,100,100)
		Battle_SetSoul(battle_soul_red)
		with(battle_bullet_bone){
		instance_destroy()}
		with(bone_box){
		instance_destroy()}
		alarm[3]=-1
		alarm[7]=1
		break
	case 720:
		alarm[7]=-1
		break
	case 800:
		Battle_SetSoul(battle_soul_blue)
		Battle_SetBoardSize(64,64,320,320)
		BlueSoulControl_Titr(DIR.RIGHT)
		Anim_Create(battle_soul,"x",0,0,battle_soul.x,320-battle_soul.x,20)
		Anim_Create(titr_legs,"x",0,ANIM_EASE.IN,titr_legs.x,-640,120)
		Anim_Create(titr_body,"x",0,ANIM_EASE.IN,titr_body.x,-640,120)
		Anim_Create(titr_head,"x",0,ANIM_EASE.IN,titr_head.x,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"legsx",0,ANIM_EASE.IN,battle_enemy_snowsans_p2.legsx,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"bodyx",0,ANIM_EASE.IN,battle_enemy_snowsans_p2.bodyx,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"headx",0,ANIM_EASE.IN,battle_enemy_snowsans_p2.headx,-640,120)
		with(battle_button){
		Anim_Create(id,"x",0,0,x,-640,120)}
		break
	case 820:
		soultemp=1
		break
	case 880:
		alarm[8]=1
		alarm[choose(9,10)]=1
		alarm[5]=1
		break
	case 1100:
		basey=battle_board.y
		temp=0
		alarm[9]=-1
		alarm[10]=-1
		alarm[4]=30
		break
	case 1400:
		alarm[4]=-1
		alarm[5]=-1
		alarm[8]=-1
		Anim_Create(titr_legs,"x",0,ANIM_EASE.IN,320+640,-640,120)
		Anim_Create(titr_body,"x",0,ANIM_EASE.IN,318.4+640,-640,120)
		Anim_Create(titr_head,"x",0,ANIM_EASE.IN,318.4+640,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"legsx",0,ANIM_EASE.IN,320+640,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"bodyx",0,ANIM_EASE.IN,318.4+640,-640,120)
		Anim_Create(battle_enemy_snowsans_p2,"headx",0,ANIM_EASE.IN,318.4+640,-640,120)
		Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-640,120)
		Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-640,120)
		Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-640,120)
		Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-640,120)
		break
	case 1500:
		Battle_SetBoardSize(64,64,320,80,8)
		battle_soul_blue.impact=true
		//battle_soul_blue.move=1
		soultemp=0
		break
	case 1510:
		Battle_MakeBoneWallRight(20,30,30)
		break
	case 1600:
		fader.color=c_black
		fader.alpha=1
		audio_play_sound(snd_cut,0,0)
		audio_pause_sound(bgm_snowsans)
		Battle_SetBoardSize(64,64,64,64)
		break
	case 1630:
		fader.alpha=0
		audio_play_sound(snd_cut,0,0)
		audio_resume_sound(bgm_snowsans)
		BlueSoulControl_Titr(DIR.DOWN)
		Battle_MakeBoneWallBottom(40,40,20)
		break
	case 1710:
		fader.alpha=1
		audio_play_sound(snd_cut,0,0)
		audio_pause_sound(bgm_snowsans)
		break
	case 1740:
		fader.alpha=0
		audio_play_sound(snd_cut,0,0)
		audio_resume_sound(bgm_snowsans)
		BlueSoulControl_Titr(DIR.UP)
		battle_soul.x=280
		battle_soul.y=battle_board.y-60
		Battle_MakeBoneWallLeft(30,40,20)
		Battle_MakeBoneWallTop(30,40,20)
		break
	case 1820:
		fader.alpha=1
		audio_play_sound(snd_cut,0,0)
		audio_pause_sound(bgm_snowsans)
		break
	case 1850:
		fader.alpha=0
		audio_play_sound(snd_cut,0,0)
		Battle_SetSoul(battle_soul_red)
		audio_resume_sound(bgm_snowsans)
		Battle_SetBoardSize(32,32,32,32)
		Battle_MakeBoneWallRound(10,80,40,0,15,300)
		Battle_MakeBone(battle_board.x,battle_board.y,120,0,0,1,0,0,3,1,350)
		board=Battle_CreateBoardExtraCircle(320,320,80)
		//if(global.mode=GAME_MODE.HARD){
		gbtemp=true
		//alarm[8]=1//}
		alarm[11]=1
		break
	case 2140:
		gbtemp=false
		alarm[8]=-1
		alarm[11]=-1
		titr_head.sweat=3
		break
	case 2200:
		instance_destroy(board)
		Battle_SetBoardSize(12,12,12,12,20)
		break
	case 2230:
		Battle_SetSoul(battle_soul_blue)
		alarm[2]=20
		gravitying=true
		break
	case 2850:
		alarm[2]=-1
		gravitying=false
		break
	case 2970:
		Battle_EndTurn()
		break
}
if(soultemp=1){
battle_soul.x=320
if(timer<1400&&timer>860&&timer mod 180 == 0){
Anim_Create(titr_legs,"x",0,0,320+640,-1280,120)
Anim_Create(titr_body,"x",0,0,318.4+640,-1280,120)
Anim_Create(titr_head,"x",0,0,318.4+640,-1280,120)
Anim_Create(battle_enemy_snowsans_p2,"legsx",0,0,320+640,-1280,120)
Anim_Create(battle_enemy_snowsans_p2,"bodyx",0,0,318.4+640,-1280,120)
Anim_Create(battle_enemy_snowsans_p2,"headx",0,0,318.4+640,-1280,120)
Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-1280,120)
Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-1280,120)
Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-1280,120)
Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-1280,120)
}
}