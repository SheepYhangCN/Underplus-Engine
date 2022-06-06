function Battle_GotoNextState() {
	Battle_SetState(Battle_GetNextState());
	if(instance_exists(battle_soul)){battle_soul.image_angle=0}
}
