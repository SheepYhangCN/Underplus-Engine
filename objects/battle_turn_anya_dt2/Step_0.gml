if(timer<1200){timer+=1}
switch(timer){
case 1:
	Battle_MakeDtKnife(battle_board.x,battle_board.y,battle_bullet_warning_knife,90,0,5,40,10)
	Battle_MakeDtKnife(battle_board.x,battle_board.y-22,battle_bullet_warning_knife,90,0,5,40,10)
	Battle_MakeDtKnife(battle_board.x,battle_board.y-44,battle_bullet_warning_knife,90,0,5,40,10)

	Blaster_Create_Advanced(0,0,200,200,0,45-90,2,2,0,40,spr_peanut_blaster,20,25)
	Blaster_Create_Advanced(0,0,440,200,0,-45-90,2,2,0,40,spr_peanut_blaster,20,25)
	Blaster_Create_Advanced(0,0,200,440,0,135-90,2,2,0,40,spr_peanut_blaster,20,25)
	Blaster_Create_Advanced(0,0,440,440,0,-135-90,2,2,0,40,spr_peanut_blaster,20,25)
	break
case 90:
	Battle_MakeDtKnife(battle_board.x,battle_board.y,battle_bullet_warning_knife,0,0,5,140,10)
	Battle_MakeDtKnife(battle_board.x+27,battle_board.y,battle_bullet_warning_knife,0,0,5,140,10)
	Battle_MakeDtKnife(battle_board.x+54,battle_board.y,battle_bullet_warning_knife,0,0,5,140,10)
	Blaster_Create_Advanced(0,0,100,battle_board.y+40,0,0,2,2,0,60,spr_peanut_blaster,40,20)
	break
case 250:
	Battle_SetBoardSize(64,64,283,283)
	Battle_SetSoul(battle_soul_blue)
	BlueSoulControl_Anya(DIR.RIGHT)
	break
case 300:
	Battle_MakeDtKnife(battle_board.x+263,battle_board.y,battle_bullet_warning_knife,0,0,5,80,10)
	Battle_MakeDtKnife(battle_board.x+233,battle_board.y,battle_bullet_warning_knife,0,0,5,80,10)
	break
case 400:
	alarm[0]=1
	alarm[1]=30
	alarm[choose(2,3)]=1
	alarm[4]=120
	for(var a=battle_board.x-250;a<=battle_board.x+260;a+=40){
	Blaster_Create_Advanced(a,room_height,a,battle_board.y+64+20,0,90,2,2,0,60,spr_peanut_blaster,380,20)
	}
	break
case 780:
	alarm[0]=-1
	alarm[1]=-1
	alarm[2]=-1
	alarm[3]=-1
	alarm[4]=-1
	break
case 880:
	Battle_SetSoul(battle_soul_red)
	Battle_SetBoardSize(8,8,8,8,20)
	break
case 900:
	Battle_MakeDtKnife(battle_board.x,battle_board.y,battle_bullet_warning_knife,0,4,10,120,100)
	var _dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
	if(global.language=0){
	_dialog.text="{font 3}{scale 5}{scale 4}{voice 0}{skippable false}D I E!{sleep 114514}"
	}else if(global.language=1){
	_dialog.text="{font 3}{speed 10}{scale 4}{voice 0}{skippalbe false}西 内 ！{sleep 114514}"
	}
	break
case 1200:
	room_goto(room_gameover)
	break
}