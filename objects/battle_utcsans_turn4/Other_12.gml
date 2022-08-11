Battle_MakeBoneWallRound(10,70,20,0,0)
battle_soul.y=battle_board.y-20
battle_soul.x=battle_board.x+20
bone1=Battle_MakeBone(battle_board.x,battle_board.y,110,0,0,0,0,0,2,1)
bone2=Battle_MakeBone(battle_board.x,battle_board.y,110,0,0,0,0,90,2,1)
if(global.mode=2){Battle_MakeBone(battle_board.x,battle_board.y,110,0,0,1,0,0,-4,1)}
alarm[0]=1
//if(global.mode=2){alarm[1]=60}