///@arg dir,*impact_speed
function BlueSoulControl(){
	if(!(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua))){
		Battle_SetSoul(battle_soul_blue)
	}
	Anim_Create(battle_soul,"impact",0,0,0,1,0,10)
	battle_soul.dir=argument[0]
	battle_soul.impact_shake=true
	if(argument_count>1){
	battle_soul.move=argument[1]}else{
	battle_soul.move=3.5}
}