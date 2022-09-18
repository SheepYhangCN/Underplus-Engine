if(timer<520&&Battle_GetState()=BATTLE_STATE.IN_TURN){
timer+=1}
switch timer{
	case 1:
		alarm[0]=1
		alarm[1]=1
		break
	case 360:
		alarm[0]=-1
		alarm[1]=-1
		break
	case 420:
		Battle_SetSoul(battle_soul_blue)
		BlueSoulControl_Anya(DIR.DOWN)
		break
	case 460:
		Battle_MakeBoneBottom(battle_board.x-64,48,6,0,0,0,1,-1,battle_bullet_bone,pencil_body,pencil_end)
		break
	case 519:
		a=instance_create_depth(420, 110, 0, battle_dialog_enemy)
		if(global.language=LANGUAGE.ENGLISH){
		a.text="{font 3}{scale 1}{voice 0}you are {color `blue`}blue{color `black`} now,{sleep 15}&this is my special attack!{pause}{end_turn}{end}"
		}else if(global.language=LANGUAGE.SCHINESE){
		a.text="{font 3}{speed 5}{scale 1}{voice 0}你现在是{color `blue`}蓝{color `black`}的啦，{sleep 15}&这就是我的特殊攻击!{pause}{end_turn}{end}"}
		break
}
