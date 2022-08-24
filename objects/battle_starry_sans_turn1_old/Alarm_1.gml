var _random=random_range(-10,30)
Battle_MakeBoneTwoV(battle_board.x-240,battle_board.y-_random,3,20,1)
Battle_MakeBoneTwoV(battle_board.x+240,battle_board.y-_random,-3,20,1)
//Battle_MakeBoneLeft(battle_board.y-64,480,5,choose(1,2),0,0,1)
Blaster_Create_Advanced(0,0,battle_soul.x,200,0,-90,0.5,2,choose(1,2),20,spr_starry_gb,20,10)
alarm[3]=30
alarm[0]=50
