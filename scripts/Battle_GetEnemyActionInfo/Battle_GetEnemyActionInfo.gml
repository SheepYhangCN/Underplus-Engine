///@arg enemy_slot
///@arg action_slot
function Battle_GetEnemyActionInfo() {

	var ENEMY=argument[0];
	var ACTION=argument[1];

	if(instance_exists(Battle_GetEnemy(ENEMY)) && ACTION>=0){
		return battle._enemy_action_info[ENEMY,ACTION];
	}else{
		return "";
	}
}
