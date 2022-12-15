function Encounter_Custom() {
	if(global.language=LANGUAGE.ENGLISH){
	Encounter_Set(BATTLE.TEST,-1,battle_enemy,-1,"* test battle");
	Encounter_Set(BATTLE.WARMA,-1,battle_enemy_warma,-1,"* A familiar figure stands in&  front of you.",-1,false,true,false,320,320)
	}else if(global.language=LANGUAGE.SCHINESE){
	Encounter_Set(BATTLE.TEST,-1,battle_enemy,-1,"* {font 0}测试战斗");
	Encounter_Set(BATTLE.WARMA,-1,battle_enemy_warma,-1,"* 一个熟悉的身影站在你面前。",-1,false,true,false,320,320)
	}
}
