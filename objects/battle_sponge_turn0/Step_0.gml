if(timer<780&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
case 1:
	BlueSoulControl(DIR.DOWN)
	Battle_MakeBoneWallBottom(30,60,90,0,battle_bullet_bone,bone_body,spatula_end)
	temp=0
	basey=270
	alarm[2]=30
	break
case 30:
	Anim_Create(obj_effect_water,"height",0,0,0,235,60)
	Battle_SetSoul(battle_soul_red)
	break
case 120:
	alarm[2]=-1
	break
case 130:
	temp1=0
	basex=320
	alarm[3]=10
	break
case 240:
	Blaster_Create_Advanced(room_width,350,450,350,180,180,1,1,0,20,spr_jellyfish_blaster,20,10)
	break
case 300:
	Blaster_Create_Advanced(0,300,150,300,0,0,1,1,0,20,spr_jellyfish_blaster,20,10)
	break
case 360:
	Blaster_Create_Advanced(battle_soul.x,0,battle_soul.x,150,-90,-90,0.25,1,1,40,spr_jellyfish_blaster,20,10)
	break
case 480:
	Anim_Create(obj_effect_water,"height",0,0,235,-235,60)
	alarm[3]=-1
	break
case 540:
	_dir=-45
	_dir1=45
	alarm[0]=1
	break
case 680:
	alarm[0]=-1
	Battle_MakeBoneWallBottom(100,56,-1,0,battle_bullet_bone,bone_body,spatula_end)
	Battle_MakeBoneWallTop(100,56,-1,0,battle_bullet_bone,bone_body,spatula_end)
	Battle_MakeBoneWallLeft(100,56,-1,0,battle_bullet_bone,bone_body,spatula_end)
	Battle_MakeBoneWallRight(100,56,-1,0,battle_bullet_bone,bone_body,spatula_end)
	break
case 779:
	a=instance_create_depth(420, 120, 0, battle_dialog_enemy)
	if(global.language=0){
	a.text="{font 3}{scale 1}{voice 8}{sponge_face 1}Are you ready?{sleep 15}{sponge_face 2}&I'm ready.{pause}{end_turn}{end}"
	}else if(global.language=1){
	a.text="{font 3}{scale 1}{voice 8}{sponge_face 1}你准备好了吗？{sleep 15}{sponge_face 2}&我准备好了。{pause}{end_turn}{end}"
	}
	break
}