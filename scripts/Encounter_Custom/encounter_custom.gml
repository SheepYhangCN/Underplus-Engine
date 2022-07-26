function Encounter_Custom() {
	if(global.language=0){
	Encounter_Set(0,-1,battle_enemy,-1,"* test battle");
	Encounter_Set(1,-1,battle_enemy_tutorial,-1,"* You encountered an Enemy!",bgm_shop);
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* White dust are falling with&  snowflakes.")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* A heavy snow, {sleep 15}mixed with dust, {sleep 15}&  and your sin, {sleep 15}floated on your&  shoulder.")
	Encounter_Set(7,-1,battle_enemy_anya,-1,"* Anya blocked your way!",bgm_anya)
	Encounter_Set(8,-1,battle_enemy_anya_dt2,-1,"")
	Encounter_Set(9,-1,battle_enemy_sans,-1,"* You feel like you're going to&  have a \"bone\" time.")
	Encounter_Set(10,-1,battle_enemy_starry_sans,-1,"{color `red`}* Why is he here? Kill him=)")
	}else if(global.language=1){
	Encounter_Set(0,-1,battle_enemy,-1,"* {font 0}测试战斗");
	Encounter_Set(1,-1,battle_enemy_tutorial,-1,"* 你遇见了个敌人！",bgm_shop);
	Encounter_Set(4,-1,battle_enemy_snowsans,-1,"* 雪白的尘埃伴随着雪花飘落。")
	Encounter_Set(5,-1,battle_enemy_snowsans_p2,-1,"* 大雪纷飞，{sleep 15}掺杂着尘埃，{sleep 15}还有你的罪恶，{sleep 15}&  飘上了你的肩膀。")
	Encounter_Set(7,-1,battle_enemy_anya,-1,"* Anya挡住了去路!",bgm_anya)
	Encounter_Set(8,-1,battle_enemy_anya_dt2,-1,"")
	Encounter_Set(9,-1,battle_enemy_sans,-1,"* 你感觉你要吃“骨”头了。")
	Encounter_Set(10,-1,battle_enemy_starry_sans,-1,"{color `red`}* 他为什么会出现在这里? 杀了他=)")
	}
}
