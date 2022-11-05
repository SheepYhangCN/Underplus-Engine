function Battle_GetMenuChoiceEnemyNum() {
	return Battle_GetMenuChoiceEnemy()+(instance_exists(Battle_GetEnemy(0)) ? 0 : 1)+(instance_exists(Battle_GetEnemy(1)) ? 0 : 1)
}
