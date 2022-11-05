// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Blaster_Create(){
    var blaster = argument[0]
    var type = argument[1]
    var x_start = argument[2]
    var y_start = argument[3]
    var x_target = argument[4]
    var y_target = argument[5]
    var angle_start = argument[6]
    var angle_target = argument[7]
    var scale = argument[8]
    var inst = instance_create_depth(x_start, y_start, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, string(blaster))
    if (argument_count > 9)
    {
        var release = argument[9]
        var beam_end = argument[10]
        inst.time_release_delay = release
        inst.time_beam_end_delay = beam_end
    }
    inst.type = type
    inst.x_target = x_target
    inst.y_target = y_target
    inst.angle_start = angle_start
    inst.angle_target = angle_target
    inst.scale_y = scale
}