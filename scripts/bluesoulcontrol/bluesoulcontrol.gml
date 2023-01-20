///@arg dir,*impact_speed
function BlueSoulControl(){
	if(!(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua))){
		Battle_SetSoul(battle_soul_blue)
	}
	battle_soul.impact=true
	battle_soul.dir=argument[0]
	battle_soul.impact_shake=true
	if(argument_count>1){
	battle_soul.move=argument[1]}else{
	battle_soul.move=5}
	battle_soul.jump_state = 2;
	battle_soul.on_block = 0;
	battle_soul.on_board = 0;
	battle_soul.on_platform = 0;
}