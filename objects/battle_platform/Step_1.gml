image_xscale=(width/2);
image_angle=angle;
sprite_index=(sticky ? spr_battle_platform_green : spr_battle_platform_purple);

if(!bounce_x){
	x+=move_x;
}else{
	repeat(abs(move_x)*10){
		if(!place_meeting(x+sign(move_x)*0.1,y,block)){
			x+=sign(move_x)*0.1;
		}else{
			move_x=-move_x;
			break;
		}
	}
}
y+=move_y;

if(Battle_GetState()!=BATTLE_STATE.IN_TURN){
	instance_destroy();
}
