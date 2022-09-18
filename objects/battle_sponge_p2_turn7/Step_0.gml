with(battle_soul){
if(y<battle_board.y&&!instance_exists(battle_soul_blue)){
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue.dir=DIR.UP
	}
if(y>=battle_board.y&&!instance_exists(battle_soul_red)){Battle_SetSoul(battle_soul_red)}
}