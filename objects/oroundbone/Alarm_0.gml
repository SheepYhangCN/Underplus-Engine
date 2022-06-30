_bones_enabled = 1
var proc = 0
var num = _bones_num
repeat num
{
    var inst = instance_create_depth(0, 0, 0, battle_bone_rd)
	inst.type=type
    inst.auto_destroy = 0
    _bones_inst[proc] = inst
    proc += 1
}
alarm[1]=1