var SPD, xx, yy, input, fx, fy, mx, my, cx, cy, inst, m, _temp_local_var_9;
event_inherited()
if(Battle_GetState()=BATTLE_STATE.IN_TURN){
if (dir == 270)
    image_angle = 0
else if (dir == 90)
    image_angle = 180
else if (dir == 180)
    image_angle = -90
else if (dir == 0)
    image_angle = 90}
	var isInside1 = false;
	var isInside2 = false;
	var isInside3 = false;
	var isInside4 = false;

var STATE=Battle_GetState();
if(STATE==BATTLE_STATE.TURN_PREPARATION||STATE==BATTLE_STATE.IN_TURN){
	if(instance_exists(battle_soul)){

		for(var i = 0; i < global.borderCount; i++) {	//遍历所有框，判断是否出框
			if(global.borders[i].contains(battle_soul.x - sprite_width/2-1, battle_soul.y)){
				isInside1 = true;
				break;
			}
		}
		for(var i = 0; i < global.borderCount; i++) {	//遍历所有框，判断是否出框
			if(global.borders[i].contains(battle_soul.x + sprite_width/2+1, battle_soul.y)){
				isInside2 = true;
				break;
			}
		}
		for(var i = 0; i < global.borderCount; i++) {	//遍历所有框，判断是否出框
			if(global.borders[i].contains(battle_soul.x, battle_soul.y - sprite_height/2 - 1 )){
				isInside3 = true;
				break;
			}
		}
		for(var i = 0; i < global.borderCount; i++) {	//遍历所有框，判断是否出框
			if(global.borders[i].contains(battle_soul.x, battle_soul.y + sprite_height/2 + 1)){
				isInside4 = true;
				break;
			}
		}
	
		if(!isInside4&&dir = 270){	//如果出框
			bbb = 1;
			move = 0;
		}
		if(!isInside3&&dir = 90){	//如果出框
			bbb = 1;
			move = 0;
		}
		if(!isInside2&&dir = 0){	//如果出框
			bbb = 1;
			move = 0;
		}
		if(!isInside1&&dir = 180){	//如果出框
			bbb = 1;
			move = 0;
		}
	}
}
if((Battle_GetState() == 3)&&moveable){
    SPD = Player_GetSpdTotal()
    SPD = (Input_IsHeld(INPUT.CANCEL) ? (SPD / 2) : SPD)
    repeat(SPD * 10){
        if((dir == 180) || (dir == 0)){
            if Input_IsHeld(INPUT.UP){
                if(!position_meeting(x, (y - (sprite_height / 2)), block))
                    y = (y - 0.1);
            }
            if Input_IsHeld(INPUT.DOWN){
                if (!position_meeting(x, (y + (sprite_height / 2)), block))
                    y = (y + 0.1);
            }
        }
        if ((dir == 90) || (dir == 270)){
            if Input_IsHeld(INPUT.LEFT){
                if (!position_meeting((x - (sprite_width / 2)), y, block))
                    x = (x - 0.1);
            }
            if Input_IsHeld(INPUT.RIGHT){
                if (!position_meeting((x + (sprite_width / 2)), y, block))
                    x = (x + 0.1);
			}
        }
    }
    xx = 0
    yy = 0
	if(dir==DIR.DOWN){
		yy=sprite_height/2+0.1;
	}else if(dir==DIR.UP){
		yy=-sprite_height/2-0.1;
	}else if(dir==DIR.LEFT){
		xx=-sprite_height/2-0.1;
	}else if(dir==DIR.RIGHT){
		xx=sprite_height/2+0.1;
	}
    blockk = position_meeting((x + xx), (y + yy), block)
    plat = position_meeting((x + xx), (y + yy), battle_platform)
    input = -1
    if (dir == 270)
        input = INPUT.UP
    else if (dir == 90)
        input = INPUT.DOWN
    else if (dir == 180)
        input = INPUT.RIGHT
    else if (dir == 0)
        input = INPUT.LEFT
    if ((blockk || plat || bbb) && (move >= 0)){
		aaa = 0;
        fx = 0
        fy = 0
		if(dir==DIR.DOWN){
			fy=sprite_height/2;
		}else if(dir==DIR.UP){
			fy=-sprite_height/2;
		}else if(dir==DIR.LEFT){
			fx=-sprite_height/2;
		}else if(dir==DIR.RIGHT){
			fx=sprite_height/2;
		}
        while (position_meeting((x + fx), (y + fy), block) || position_meeting((x + fx), (y + fy), battle_platform)){
			move = 0;
            mx = 0
            my = 0
			if(dir==DIR.DOWN){
				my=-0.1;
			}else if(dir==DIR.UP){
				my=0.1;
			}else if(dir==DIR.LEFT){
				mx=0.1;
			}else if(dir==DIR.RIGHT){
				mx=-0.1;
			}
            x = (x + mx)
            y = (y + my)
        }
        if (position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform)) || (bbb){
            move = 0
            if impact
            {
                impact = 0
                audio_play_sound(snd_impact, 0, 0)
				if(impact_shake)
					Camera_Shake(8, 8, 1, 1, 1, 1)
				if(impact_damage&&Player_GetHp()>1)
					Player_Hurt(1)
            }
            if position_meeting((x + xx), (y + yy), battle_platform)
            {
                cx = 0
                cy = 0
				if(dir==DIR.DOWN){
					cy=sprite_height/2+1;
				}else if(dir==DIR.UP){
					cy=-sprite_height/2-1;
				}else if(dir==DIR.LEFT){
					cx=-sprite_height/2-1;
				}else if(dir==DIR.RIGHT){
					cx=sprite_height/2+1;
				}
                inst = instance_place((x + cx), (y + cy), battle_platform)
                if instance_exists(inst)
                {
                    if inst.sticky
                        x += (inst.x - inst.xprevious)
                }
            }
            if Input_IsHeld(input)
                move = (- _speed_jump)
        }
    }
    if (move < 0){
        move = (move + _gravity_jump)
        if (! Input_IsHeld(input))
			if(aaa = 0){
				if(move < -1){
					move = -1;
				}
				aaa = 1;
			}
        if (move > 0)
            move = 0
		else if(position_meeting(x-xx,y-yy,block)){
			move = 0;
		}
    }
    else if(move < _gravity_fall_max){
        move = (move + _gravity_fall);
	}
	if(move < 10&&move >= 0&&blockk = 0&&plat = 0){
		aa += 1;
		move += 0.02;
		if(aa mod 4 = 0){
			move += 0.68;
		}
	}
	else{
		aa = 0;
	}
    repeat (abs(move) * 10)
    {
        xx = 0
        yy = 0
		if(dir==DIR.DOWN){
			yy=(sprite_height/2)*sign(move);
		}else if(dir==DIR.UP){
			yy=-(sprite_height/2)*sign(move);
		}else if(dir==DIR.LEFT){
			xx=-(sprite_width/2)*sign(move);
		}else if(dir==DIR.RIGHT){
			xx=(sprite_width/2)*sign(move);
		}
        if (! position_meeting((x + xx), (y + yy), block)) || (isInside4)
        {
           bbb = 0; 
		   _temp_local_var_9 = ((move > 0) && position_meeting((x + xx), (y + yy), battle_platform))
            m = (! _temp_local_var_9)
        }
        else
            m = 0
        if m
        {
            xx = 0
            yy = 0
			if(dir==DIR.DOWN){
				yy=0.1*sign(move);
			}else if(dir==DIR.UP){
				yy=-0.1*sign(move);
			}else if(dir==DIR.LEFT){
				xx=-0.1*sign(move);
			}else if(dir==DIR.RIGHT){
				xx=0.1*sign(move);
			}
            x = (x + xx)
            y = (y + yy)
        }
    }
    xx = 0
    yy = 0
			if(dir==DIR.DOWN){
				yy=0.1*sign(move);
			}else if(dir==DIR.UP){
				yy=-0.1*sign(move);
			}else if(dir==DIR.LEFT){
				xx=-0.1*sign(move);
			}else if(dir==DIR.RIGHT){
				xx=0.1*sign(move);
			}
    if place_meeting((x + xx), (y + yy), block)
        move = 0
}
else{
	move = 0;
}
