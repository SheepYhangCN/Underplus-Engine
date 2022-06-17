///@arg x,y,length,hspeed,vspeed,type,out,angle,rotate,auto_destroy,*duration,*obj
function Battle_MakeMenuBone(){
	var OBJ = battle_bullet_bone
    var X = argument[0]
    var Y = argument[1]
    var LENGTH = argument[2]
    var HSPEED = argument[3]
    var VSPEED = argument[4]
    var COLOR = argument[5]
    var OUT = argument[6]
    var ANGLE = argument[7]
    var ROT = argument[8]
    var DESTROY = argument[9]
    var DURATION = -1
    if (argument_count >= 11)
        DURATION = argument[10]
    if (argument_count >= 12)
        OBJ = argument[11]
		var bone=Battle_MakeBone(X,Y,LENGTH,HSPEED,VSPEED,COLOR,OUT,ANGLE,ROT,DESTROY,DURATION,OBJ)
		bone.lock_hp=1
    return bone;
}
