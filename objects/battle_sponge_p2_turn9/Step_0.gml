if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
switch timer{
case 1:
	BlueSoulControl(DIR.DOWN)
	Battle_MakeBoneWallBottom(30,54,180,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 50:
	BlueSoulControl(DIR.UP)
	Battle_MakeBoneWallTop(30,54,130,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 100:
	BlueSoulControl(DIR.LEFT)
	Battle_MakeBoneWallLeft(30,54,80,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 150:
	BlueSoulControl(DIR.RIGHT)
	Battle_MakeBoneWallRight(30,54,30,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 190:
	Battle_SetSoul(battle_soul_red)
	break
case 240:
	alarm[0]=1
	break
case 570:
	alarm[0]=-1
	Battle_SetSoul(battle_soul_red)
	Battle_SetBoardSize(64,64,128,128)
	alarm[1]=1
	break
case 920:
	alarm[1]=-1
	break
case 1000:
	Battle_SetBoardSize(64,64,240,320)
	BlueSoulControl(DIR.LEFT)
	break
case 1060:
	Battle_SetBoardSize(64,64,320,320)
	BlueSoulControl(DIR.RIGHT)
	Anim_Create(battle_soul_blue,"x",0,0,battle_soul_blue.x,320-battle_soul_blue.x,40)
	Anim_Create(obj_effect_water,"height",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,160,60)
	Anim_Create(battle_enemy_sponge_p2,"x",0,ANIM_EASE.IN,battle_enemy_sponge_p2.x,-640,120)
	Anim_Create(battle_enemy_sponge_p2,"legx",0,ANIM_EASE.IN,battle_enemy_sponge_p2.legx,-640,120)
	Anim_Create(battle_enemy_sponge_p2,"bodyx",0,ANIM_EASE.IN,battle_enemy_sponge_p2.bodyx,-640,120)
	with(battle_button){
	Anim_Create(id,"x",0,0,x,-640,120)}
	break
case 1100:
	soullock=true
	break
case 1160:
	alarm[2]=1
	alarm[4]=1
	break
case 1760:
	alarm[2]=-1
	alarm[3]=-1
	alarm[4]=-1
	Anim_Create(battle_enemy_sponge_p2,"legx",0,ANIM_EASE.IN,320+640,-640,120)
	Anim_Create(battle_enemy_sponge_p2,"bodyx",0,ANIM_EASE.IN,320+1.6+640,-640,120)
	Anim_Create(battle_enemy_sponge_p2,"x",0,ANIM_EASE.IN,320+640,-640,120)
	Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-640,120)
	Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-640,120)
	Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-640,120)
	Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-640,120)
	Battle_SetBoardSize(64,64,320,120,120)
	break
case 1880:
	battle_soul_blue.move=5
	soullock=false
	Battle_MakeBoneWallRight(20,50,30,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1600+370:
	obj_effect_water.height=235
	fader.color=c_black
	fader.alpha=1
	audio_play_sound(snd_cut,0,0)
	audio_pause_sound(bgm_sponge_p2)
	Battle_SetBoardSize(64,64,64,64)
	break
case 1630+370:
	fader.alpha=0
	audio_play_sound(snd_cut,0,0)
	audio_resume_sound(bgm_sponge_p2)
	BlueSoulControl(DIR.DOWN)
	Battle_MakeBoneWallBottom(40,40,20,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1710+370:
	fader.alpha=1
	audio_play_sound(snd_cut,0,0)
	audio_pause_sound(bgm_sponge_p2)
	break
case 1740+370:
	fader.alpha=0
	audio_play_sound(snd_cut,0,0)
	audio_resume_sound(bgm_sponge_p2)
	BlueSoulControl(DIR.UP)
	battle_soul.x=280
	battle_soul.y=battle_board.y-60
	Battle_MakeBoneWallLeft(30,40,20,0,battle_bullet_bone,bone_body,spatula_end)
	Battle_MakeBoneWallTop(30,40,20,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 1820+370:
	fader.alpha=1
	obj_effect_water.height=0
	audio_play_sound(snd_cut,0,0)
	audio_pause_sound(bgm_sponge_p2)
	break
case 1850+370:
	fader.alpha=0
	audio_play_sound(snd_cut,0,0)
	Battle_SetSoul(battle_soul_red)
	audio_resume_sound(bgm_sponge_p2)
	Battle_SetBoardSize(32,32,32,32)
	Battle_MakeBoneWallRound(10,80,40,0,15,300,battle_bullet_bone,bone_body,spatula_end)
	//Battle_MakeBone(battle_board.x,battle_board.y,120,0,0,1,0,0,3,1,350)
	board=Battle_CreateBoardExtraCircle(320,320,80)
	alarm[5]=1
	break
case 2140+370:
	instance_destroy(board)
	Battle_EndTurn()
	break
}