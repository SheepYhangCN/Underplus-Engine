Battle_MakeBoneTop(battle_board.x-240,20,3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-240,40,3,0,0,0,1)
Battle_MakeBoneTop(battle_board.x+240,20,-3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x+240,40,-3,0,0,0,1)
alarm[4]=10
alarm[3]=30
if(global.mode=GAME_MODE.HARD){alarm[0]=60}else{alarm[0]=70}
alarm[5]=40
