event_inherited();
//灵魂变化
if(Battle_GetState()==BATTLE_STATE.IN_TURN){
	if(Input_IsHeld(INPUT.CANCEL)){
	sprite_index=spr_battle_soul_blue_orange_aqua_slow
	}else{
	sprite_index=spr_battle_soul_blue_orange_aqua
}}
if(Battle_GetState()==BATTLE_STATE.MENU){
	sprite_index=spr_battle_soul_blue_orange_aqua
}

if (Battle_GetState() == 3 && moveable)
{
if(Battle_GetState()!=BATTLE_STATE.MENU){
if (dir == 270)
    image_angle = 0
else if (dir == 90)
    image_angle = 180
else if (dir == 180)
    image_angle = -90
else if (dir == 0)
    image_angle = 90}
    var SPD = Player_GetSpdTotal()
    SPD = (Input_IsHeld(5) ? (SPD / 2) : SPD)
    repeat (SPD * 13)
    {
        if (dir == 180 || dir == 0)
        {
            if Input_IsHeld(0)
                _dir = 1
            if Input_IsHeld(1)
                _dir = 2
        }
        if (dir == 90 || dir == 270)
        {
            if Input_IsHeld(2)
                _dir = 3
            if Input_IsHeld(3)
                _dir = 4
        }
    }
    var xx = 0
    var yy = 0
    if (dir == 270)
        yy = ((sprite_height / 2) + 0.1)
    else if (dir == 90)
        yy = (((-sprite_height) / 2) - 0.1)
    else if (dir == 180)
        xx = (((-sprite_height) / 2) - 0.1)
    else if (dir == 0)
        xx = ((sprite_height / 2) + 0.1)
    var a = position_meeting((x + xx), (y + yy), block)
    var b = position_meeting((x + xx), (y + yy), battle_platform)
    var input = -1
    if (dir == 270)
        input = 1
    else if (dir == 90)
        input = 0
    else if (dir == 180)
        input = 2
    else if (dir == 0)
        input = 3
    if ((a || b) && move >= 0)
    {
        var fx = 0
        var fy = 0
        if (dir == 270)
            fy = (sprite_height / 2)
        else if (dir == 90)
            fy = ((-sprite_height) / 2)
        else if (dir == 180)
            fx = ((-sprite_height) / 2)
        else if (dir == 0)
            fx = (sprite_height / 2)
        while (position_meeting((x + fx), (y + fy), block) || position_meeting((x + fx), (y + fy), battle_platform))
        {
            var mx = 0
            var my = 0
            if (dir == 270)
                my = -0.1
            else if (dir == 90)
                my = 0.1
            else if (dir == 180)
                mx = 0.1
            else if (dir == 0)
                mx = -0.1
            x += mx
            y += my
        }
        if (position_meeting((x + xx), (y + yy), block) || position_meeting((x + xx), (y + yy), battle_platform))
        {
            _jump = 1
            move = 0
            if impact
            {
                impact = 0
                audio_play_sound(snd_impact, 0, false)
                Camera_Shake(8, 8, 1, 1, 1, 1)
            }
            if position_meeting((x + xx), (y + yy), battle_platform)
            {
                var cx = 0
                var cy = 0
                if (dir == 270)
                    cy = ((sprite_height / 2) + 1)
                else if (dir == 90)
                    cy = (((-sprite_height) / 2) - 1)
                else if (dir == 180)
                    cx = (((-sprite_height) / 2) - 1)
                else if (dir == 0)
                    cx = ((sprite_height / 2) + 1)
                var inst = instance_position((x + cx), (y + cy), battle_platform)
                if instance_exists(inst)
                {
                    if inst.sticky
                        x += (inst.x - inst.xprevious)
                }
            }
            if (_jump_time >= 0)
            {
                move = (-_speed_jump)
                _jump = 3
                _jump_time = 34
            }
        }
    }
    else if (move < 0)
        move += _gravity_jump
    if (_jump == 3)
        _jump_time -= 1
    if (Input_IsPressed(input) && _jump == 3)
    {
        _jump = 2
        _jump_time = 0
        move = 0
    }
    if (_jump == 3 && _jump_time <= 0)
    {
        _jump = 2
        _jump_time = 0
        move = 0
    }
    if (_jump == 2)
        _stop_time -= 1
    if (_stop_time <= 0)
    {
        _stop_time = 7
        _jump = 1
    }
    if (_jump == 1)
        move += _gravity_fall
    repeat (abs(move) * 10)
    {
        xx = 0
        yy = 0
        if (dir == 270)
            yy = ((sprite_height / 2) * sign(move))
        else if (dir == 90)
            yy = ((-(sprite_height / 2)) * sign(move))
        else if (dir == 180)
            xx = ((-(sprite_width / 2)) * sign(move))
        else if (dir == 0)
            xx = ((sprite_width / 2) * sign(move))
        if (!position_meeting((x + xx), (y + yy), block))
        {
            var _temp_local_var_9 = (move > 0 && position_meeting((x + xx), (y + yy), battle_platform))
            var m = (!_temp_local_var_9)
        }
        else
            m = 0
        if m
        {
            xx = 0
            yy = 0
            if (dir == 270)
                yy = (0.1 * sign(move))
            else if (dir == 90)
                yy = (-0.1 * sign(move))
            else if (dir == 180)
                xx = (-0.1 * sign(move))
            else if (dir == 0)
                xx = (0.1 * sign(move))
            x += xx
            y += yy
        }
    }
    xx = 0
    yy = 0
    if (dir == 270)
        yy = (-0.1 * sign(move))
    else if (dir == 90)
        yy = (0.1 * sign(move))
    else if (dir == 180)
        xx = (0.1 * sign(move))
    else if (dir == 0)
        xx = (-0.1 * sign(move))
    if place_meeting((x + xx), (y + yy), block)
        move = 0
}
SPD = Player_GetSpdTotal()
SPD = (Input_IsHeld(5) ? (SPD / 2) : SPD)
repeat (SPD * 13)
{
    if (_dir == 1)
    {
        if (!position_meeting(x, (y - (sprite_height / 2)), block))
            y += 0.1
    }
    if (_dir == 2)
    {
        if (!position_meeting(x, (y + (sprite_height / 2)), block))
            y -= 0.1
    }
    if (_dir == 3)
    {
        if (!position_meeting((x - (sprite_width / 2)), y, block))
            x += 0.1
    }
    if (_dir == 4)
    {
        if (!position_meeting((x + (sprite_width / 2)), y, block))
            x -= 0.1
    }
}
