alarm[0]=1;
alarm[1]=1;
if(global.mode=2){
alarm[2]=100}
Battle_SetSoul(battle_soul_blue)
instance_create_depth(battle_board.x-20,battle_board.y+20,-1001,battle_platform)
instance_create_depth(battle_board.x-20,battle_board.y-30,-1001,battle_platform)