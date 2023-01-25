a=instance_create_depth(battle_board.x+160,battle_board.y+28,-1001,battle_platform)
a.hspeed=-2
if(global.mode=GAME_MODE.HARD){
alarm[0]=40
}else{
alarm[0]=30
}