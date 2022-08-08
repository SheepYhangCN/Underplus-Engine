var a=random_range(-18,24)
if(global.mode=2){var gap=20}else{var gap=24}
Battle_MakeBoneTwoV(battle_board.x-240,battle_board.y-a,3,gap,1)
Battle_MakeBoneTwoV(battle_board.x+240,battle_board.y-a,-3,gap,1)
alarm[4]=10
if(global.mode=2){
alarm[2]=15
alarm[1]=100
}else{
alarm[0]=100}