///@arg x,y,hspeed,gap,auto_destroy,*duration
function Battle_MakeBoneTwoV(){
    var X = argument[0]
    var Y = argument[1]
    var HSPEED = argument[2]
    var GAP = argument[3]
    var DESTROY = argument[4]
    var DURATION = -1
    if (argument_count >= 6)
        DURATION = argument[5]
    Battle_MakeBoneTop(X, (((Y - battle_board.y) + battle_board.up) - GAP), HSPEED, (0 << 0), 0, 0, DESTROY, DURATION)
    Battle_MakeBoneBottom(X, (((battle_board.y + battle_board.down) - GAP) - Y), HSPEED, (0 << 0), 0, 0, DESTROY, DURATION)
    return;
}