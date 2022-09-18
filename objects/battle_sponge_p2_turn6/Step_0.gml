with(battle_soul){
if(x>battle_board.x&&!instance_exists(battle_soul_blue)){
	Battle_SetSoul(battle_soul_blue)
	battle_soul_blue.dir=DIR.RIGHT
	}
if(x<=battle_board.x&&!instance_exists(battle_soul_red)){Battle_SetSoul(battle_soul_red)}
}