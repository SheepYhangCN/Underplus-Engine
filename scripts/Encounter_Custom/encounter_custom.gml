function Encounter_Custom() {
	if(global.language=0){
	Encounter_Set(0,-1,battle_enemy,-1,"* test battle");
	Encounter_Set(1,-1,battle_enemy_sannes,-1,"* Fuck You.");
	Encounter_Set(2,-1,battle_enemy_titr,-1,"* Tears in the rain,{sleep 15}&* Judgement of sin.");
	Encounter_Set(3,-1,battle_enemy_isfp4,-1,"* You doesn't feel good.&{sleep 15}* It seems like you are going to&  have a hard battle with Ink.")
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* You feel white \"Snow\" drifted&  on your shoulder.")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* White dust are falling with&  snowflakes.")
	}else if(global.language=1){
	Encounter_Set(0,-1,battle_enemy,-1,"* {font 3}测试战斗");
	Encounter_Set(1,-1,battle_enemy_sannes,-1,"* Fuck You.");
	Encounter_Set(2,-1,battle_enemy_titr,-1,"* {font 3}雨中之泪，{sleep 15}&{font 0}* {font 3}罪恶之审判。")
	Encounter_Set(3,-1,battle_enemy_isfp4,-1,"* 你感觉不舒服。&{sleep 15}* 看起来你将和Ink有一场苦战了。")
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* 你感觉白色的“雪”飘上了你的肩膀。")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* 雪白的尘埃伴随着雪花飘落。")
	}
}
