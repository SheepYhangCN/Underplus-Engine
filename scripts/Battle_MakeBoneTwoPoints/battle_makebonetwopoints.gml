///@arg point0_x,point0_y,point1_x,point1_y,type,out,autoo_destroy,*duration,*obj
function Battle_MakeBoneTwoPoints(){
    var POINT_X0 = argument[0]
    var POINT_Y0 = argument[1]
    var POINT_X1 = argument[2]
    var POINT_Y1 = argument[3]
    var COLOR = argument[4]
    var OUT = argument[5]
    var DESTROY = argument[6]
    var DURATION = -1
	var OBJ = battle_bullet_bone
    if (argument_count >= 8)
        DURATION = argument[7]
    if (argument_count >= 9)
        OBJ = argument[8]
    bone = instance_create_depth((POINT_X0 + ((POINT_X1 - POINT_X0) / 2)), (POINT_Y0 + ((POINT_Y1 - POINT_Y0) / 2)), 0, OBJ)
    bone.point_x[0] = POINT_X0
    bone.point_y[0] = POINT_Y0
    bone.point_x[1] = POINT_X1
    bone.point_y[1] = POINT_Y1
    bone.type = COLOR
    bone.out = OUT
    bone.auto_destroy = DESTROY
    bone.duration = DURATION
    bone.mode = (2 << 0)
    return bone;

}