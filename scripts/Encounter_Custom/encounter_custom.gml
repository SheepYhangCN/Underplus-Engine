function Encounter_Custom() {
	if(global.language=LANGUAGE.ENGLISH){
	Encounter_Set(BATTLE.TEST,-1,battle_enemy,-1,"* test battle");
	Encounter_Set(BATTLE.TUTORIAL,-1,battle_enemy_tutorial,-1,"* You encountered an Enemy!",bgm_shop);
	Encounter_Set(BATTLE.YUHANG,-1,battle_enemy_yuhang,-1,"* Now you have no way out.",bgm_yuhang)
	Encounter_Set(BATTLE.UTSE_SANS,-1,battle_enemy_snowsans,-1,"* White dust are falling with&  snowflakes.",-1,false,true,false,320,320)
	Encounter_Set(BATTLE.UTSE_SANS_P2,-1,battle_enemy_snowsans_p2,-1,"* A heavy snow, {sleep 15}mixed with dust, {sleep 15}&  and your sin, {sleep 15}floated on your&  shoulder.")
	Encounter_Set(BATTLE.SHIFT_SANS,-1,battle_enemy_shift_sans,-1,"* Sans attacked!")
	Encounter_Set(BATTLE.ANYA,-1,battle_enemy_anya,-1,"* Anya blocked your way!",bgm_anya)
	Encounter_Set(BATTLE.ANYA_DT2,-1,battle_enemy_anya_dt2,-1,"")
	Encounter_Set(BATTLE.SANS_REMAKE,-1,battle_enemy_sans,-1,"* You feel like you're going to&  have a \"bone\" time.",-1,false,true,false,320,320)
	Encounter_Set(BATTLE.UTC_SANS,-1,battle_enemy_utcsans,-1,"* A familiar figure stands in&  front of you.")
	Encounter_Set(BATTLE.STARRY_SANS,-1,battle_enemy_starry_sans,-1,"* The unexpected battle began...")
	Encounter_Set(BATTLE.THREE_MINUTE_GB,-1,battle_enemy_timematch,-1,"",bgm_rickroll)
	Encounter_Set(BATTLE.SPONGE,-1,battle_enemy_sponge,-1,"* Are you ready?")
	Encounter_Set(BATTLE.SPONGE_P2,-1,battle_enemy_sponge_p2,-1,"* Welcome to Hell Of High Water.")
	Encounter_Set(BATTLE.WARMA,-1,battle_enemy_warma,-1,"* A familiar figure stands in&  front of you.",-1,false,true,false,320,320)
	}else if(global.language=LANGUAGE.SCHINESE){
	Encounter_Set(BATTLE.TEST,-1,battle_enemy,-1,"* {font 0}测试战斗");
	Encounter_Set(BATTLE.TUTORIAL,-1,battle_enemy_tutorial,-1,"* 你遇见了个敌人!",bgm_shop);
	Encounter_Set(BATTLE.YUHANG,-1,battle_enemy_yuhang,-1,"* 现在你已无路可逃。",bgm_yuhang)
	Encounter_Set(BATTLE.UTSE_SANS,-1,battle_enemy_snowsans,-1,"* 雪白的尘埃伴随着雪花飘落。",-1,false,true,false,320,320)
	Encounter_Set(BATTLE.UTSE_SANS_P2,-1,battle_enemy_snowsans_p2,-1,"* 大雪纷飞, {sleep 15}掺杂着尘埃, {sleep 15}还有你的罪恶, {sleep 15}&  飘上了你的肩膀。")
	Encounter_Set(BATTLE.SHIFT_SANS,-1,battle_enemy_shift_sans,-1,"* Sans攻击了!")
	Encounter_Set(BATTLE.ANYA,-1,battle_enemy_anya,-1,"* Anya挡住了去路!",bgm_anya)
	Encounter_Set(BATTLE.ANYA_DT2,-1,battle_enemy_anya_dt2,-1,"")
	Encounter_Set(BATTLE.SANS_REMAKE,-1,battle_enemy_sans,-1,"* 你感觉你要吃“骨”头了。",-1,false,true,false,320,320)
	Encounter_Set(BATTLE.UTC_SANS,-1,battle_enemy_utcsans,-1,"* 一个熟悉的身影站在你面前。")
	Encounter_Set(BATTLE.STARRY_SANS,-1,battle_enemy_starry_sans,-1,"* 意外的战斗开始了...")
	Encounter_Set(BATTLE.THREE_MINUTE_GB,-1,battle_enemy_timematch,-1,"",bgm_rickroll)
	Encounter_Set(BATTLE.SPONGE,-1,battle_enemy_sponge,-1,"* 你准备好了吗?")
	Encounter_Set(BATTLE.SPONGE_P2,-1,battle_enemy_sponge_p2,-1,"* 欢迎来到深水地狱。")
	Encounter_Set(BATTLE.WARMA,-1,battle_enemy_warma,-1,"* 一个熟悉的身影站在你面前。",-1,false,true,false,320,320)
	}
}
