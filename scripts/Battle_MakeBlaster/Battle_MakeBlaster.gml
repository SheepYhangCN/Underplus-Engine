///@arg x,y,target_x,target_y,angle,target_angle,pause_time,scale_x,scale_y,stay_time,move_time,type,*shake,*sprite,*object,*audio_intro,*audio_release,*beam_spr
function Battle_MakeBlaster()
{
    var xx = argument[0]
    var yy = argument[1]
    var idealxx = argument[2]
    var idealyy = argument[3]
    var AS = argument[4]
    var idealrott = argument[5]
    var pp = argument[6]
    var xscale = argument[7]
    var yscale = argument[8]
    var T = argument[9]
    var TT = argument[10]
    var BLEND = argument[11]
    var AD = 1
    var BAD = 1
    var SPR = spr_gb
	var OBJ = battle_bullet_blaster
	var SHAKE = true
	var BEAM_SPR = spr_beam
    if (argument_count >= 13)
        SHAKE = argument[12]
    if (argument_count >= 14)
        SPR = argument[13]
    if (argument_count >= 15)
        OBJ = argument[14]
    if (argument_count >= 16)
        AD = argument[15]
    if (argument_count >= 17)
        BAD = argument[16]
    if (argument_count >= 18)
        BEAM_SPR = argument[17]
    bb = instance_create_depth(xx, yy, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, OBJ)
    bb.xx = idealxx
    bb.yy = idealyy
    bb.idealrot = idealrott
    bb.pause = pp
    bb.image_xscale = xscale
    bb.image_yscale = yscale
    bb.stay_time = T
    bb.move_time = TT
    bb.type = BLEND
    bb.image_angle = AS
    bb.angle = AS
    bb.ag_start = AS
	bb.shake=SHAKE
	bb.beam_spr=BEAM_SPR
    if (argument_count >= 14)
        bb.sprite_index = SPR
    if (AD)
    {
        audio_stop_sound(snd_gb_charge)
        audio_play_sound(snd_gb_charge, 0, false)
    }
    if BAD
        bb.ad = BAD
    return bb;
}

