Battle_MakeBoneTop(battle_board.x-240,20,3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-240,60,3,0,0,0,1)
Battle_MakeBoneTop(battle_board.x+240,20,-3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x+240,60,-3,0,0,0,1)
alarm[4]=10
if(global.mode=GAME_MODE.HARD){
alarm[3]=30
alarm[0]=60
alarm[5]=40
}else{
alarm[1]=60}
