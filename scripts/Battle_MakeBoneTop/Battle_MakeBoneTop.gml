///@arg x,length,hspeed,type,out,rotate,auto_destroy,*duration
function Battle_MakeBoneTop(){
    var X = argument[0]
    var LENGTH = argument[1]
    var HSPEED = argument[2]
    var COLOR = argument[3]
    var OUT = argument[4]
    var ROT = argument[5]
    var DESTROY = argument[6]
    var DURATION = -1
    if (argument_count >= 8)
        DURATION = argument[7]
    bone = Battle_MakeBoneV(X, (((battle_board.y - battle_board.up) + (LENGTH / 2)) + 5), LENGTH, HSPEED, 0, COLOR, OUT, ROT, DESTROY, DURATION)
    return;
}