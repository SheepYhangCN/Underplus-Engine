function Encounter_Custom() {
	if(global.language=LANGUAGE.ENGLISH){
	Encounter_Set(BATTLE.UTC_SANS,-1,battle_enemy_utcsans,-1,"* A familiar figure stands in&  front of you.")
	}else if(global.language=LANGUAGE.SCHINESE){
	Encounter_Set(BATTLE.UTC_SANS,-1,battle_enemy_utcsans,-1,"* 一个熟悉的身影站在你面前。")
	}
}
