///@arg y,length.vspeed,type,out.rotate,auto_destroy,*duration
function Battle_MakeBoneRight(){
    var Y = argument[0]
    var LENGTH = argument[1]
    var VSPEED = argument[2]
    var COLOR = argument[3]
    var OUT = argument[4]
    var ROT = argument[5]
    var DESTROY = argument[6]
    var DURATION = -1
    if (argument_count >= 8)
        DURATION = argument[7]
    bone = Battle_MakeBoneH((((battle_board.x + battle_board.right) - (LENGTH / 2)) - 5), Y, LENGTH, 0, VSPEED, COLOR, OUT, ROT, DESTROY, DURATION)
    return;

}