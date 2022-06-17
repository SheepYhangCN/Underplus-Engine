function Encounter_Custom() {
	if(global.language=0){
	Encounter_Set(0,-1,battle_enemy,-1,"* test battle");
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* White dust are falling with&  snowflakes.")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* The snow is being bigger and&  bigger, {sleep 15}mixed with dust, {sleep 15}&  floated on your shoulder.")
	}else if(global.language=1){
	Encounter_Set(0,-1,battle_enemy,-1,"* {font 3}测试战斗");
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* 雪白的尘埃伴随着雪花飘落。")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* 雪越下越大，{sleep 15}掺杂着尘埃，{sleep 15}&  飘上了你的肩膀。")
	}
}
