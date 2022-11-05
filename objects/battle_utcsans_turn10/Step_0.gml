if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
switch timer{
case 1:
	BlueSoulControl_UtcSans(DIR.DOWN)
	Battle_MakeBoneWallBottom(20,40,20)
	break
case 60:
	BlueSoulControl_UtcSans(DIR.UP)
	Battle_MakeBoneWallTop(20,40,20)
	break
case 120:
	BlueSoulControl_UtcSans(DIR.LEFT)
	Battle_MakeBoneWallLeft(20,40,20)
	break
case 180:
	BlueSoulControl_UtcSans(DIR.RIGHT)
	Battle_MakeBoneWallRight(20,40,20)
	break
case 240:
	Battle_SetSoul(battle_soul_red)
	Battle_SetBoardSize(64,64,128,128,30)
	break
case 300:
	alarm[0]=1
	break
case 780:
	alarm[0]=-1
	Battle_SetBoardSize(64,64,64,64,30)
	break
case 840:
	BlueSoulControl_UtcSans(DIR.LEFT)
	Battle_SetBoardSize(64,64,250,64,20)
	break
case 860:
	Battle_MakeBoneWallLeft(20,30,10)
	break
case 900:
	BlueSoulControl_UtcSans(DIR.RIGHT)
	Anim_Create(battle_enemy_utcsans,"x",0,ANIM_EASE.IN,battle_enemy_utcsans.x,-640,120)
	Anim_Create(battle_enemy_utcsans,"legx",0,ANIM_EASE.IN,battle_enemy_utcsans.legx,-640,120)
	Anim_Create(battle_enemy_utcsans,"bodyx",0,ANIM_EASE.IN,battle_enemy_utcsans.bodyx,-640,120)
	Anim_Create(battle_enemy_utcsans,"headx",0,ANIM_EASE.IN,battle_enemy_utcsans.headx,-640,120)
	with(battle_button){
	Anim_Create(id,"x",0,0,x,-640,120)}
	Battle_SetBoardSize(64,64,320,320,30)
	battle_soul.move=0
	Anim_Create(battle_soul,"x",0,0,battle_soul.x,320-battle_soul.x,30)
	break
case 910:
	alarm[1]=10
	audio_pause_sound(bgm_utcsans)
	fader.alpha=1
	audio_play_sound(snd_cut,0,0)
	if!(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=browser_ie_mobile||os_browser=browser_ie_mobile){
	space=instance_create_depth(0,0,DEPTH_BATTLE.BG-1,obj_effect_space)}
	break
case 940:
	audio_resume_sound(bgm_utcsans)
	fader.alpha=0
	break
case 970:
	alarm[2]=1
	break
case 1280:
	alarm[2]=-1
	alarm[3]=-1
	break
case 1340:
	basey=battle_board.y
	temp=0
	alarm[4]=1
	break
case 1570:
	Anim_Create(battle_enemy_utcsans,"x",0,ANIM_EASE.IN,320+640,-640,120)
	Anim_Create(battle_enemy_utcsans,"legx",0,ANIM_EASE.IN,320+640,-640,120)
	Anim_Create(battle_enemy_utcsans,"bodyx",0,ANIM_EASE.IN,318.4+640,-640,120)
	Anim_Create(battle_enemy_utcsans,"headx",0,ANIM_EASE.IN,318.4+640,-640,120)
	Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-640,120)
	Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-640,120)
	Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-640,120)
	Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-640,120)
	break
case 1640:
	alarm[4]=-1
	break
case 1690:
	Battle_SetBoardSize(64,64,320,240,15)
	break
case 1700:
	alarm[1]=-1
	break
case 1705:
	Battle_MakeBoneWallRight(20,40,20)
	break
case 1760:
	audio_pause_sound(bgm_utcsans)
	audio_play_sound(snd_cut,0,0)
	fader.alpha=1
	fader.color=c_black
	Battle_SetBoardSize(64,64,64,64)
	if(instance_exists(space)){instance_destroy(space)}
	break
case 1800:
	audio_resume_sound(bgm_utcsans)
	fader.alpha=0
	BlueSoulControl_UtcSans(DIR.DOWN)
	Battle_MakeBoneWallBottom(40,40,20)
	break
case 1860:
	audio_pause_sound(bgm_utcsans)
	audio_play_sound(snd_cut,0,0)
	fader.alpha=1
	break
case 1900:
	audio_resume_sound(bgm_utcsans)
	fader.alpha=0
	BlueSoulControl_UtcSans(DIR.UP)
	battle_soul.x=battle_board.x-32
	battle_soul.y=battle_board.y-32
	Battle_MakeBoneWallTop(40,40,10)
	Battle_MakeBoneWallLeft(40,40,10)
	break
case 1960:
	audio_pause_sound(bgm_utcsans)
	audio_play_sound(snd_cut,0,0)
	fader.alpha=1
	break
case 2000:
	audio_resume_sound(bgm_utcsans)
	fader.alpha=0
	Battle_SetSoul(battle_soul_red)
	_dir=45
	_dir1=-45
	alarm[5]=30
	break
case 2600:
	Battle_EndTurn()
	break
}

if(timer<1570&&timer>900&&timer mod 180 == 0){
Anim_Create(battle_enemy_utcsans,"x",0,0,320+640,-1280,120)
Anim_Create(battle_enemy_utcsans,"legx",0,0,320+640,-1280,120)
Anim_Create(battle_enemy_utcsans,"bodyx",0,0,318.4+640,-1280,120)
Anim_Create(battle_enemy_utcsans,"headx",0,0,318.4+640,-1280,120)
Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-1280,120)
Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-1280,120)
Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-1280,120)
Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-1280,120)
}