function Encounter_Custom() {
	if(global.language=0){
	Encounter_Set(10,-1,battle_enemy_utcsans,-1,"* A familiar figure stands in&  front of you.")
	}else if(global.language=1){
	Encounter_Set(10,-1,battle_enemy_utcsans,-1,"* 一个熟悉的身影站在你面前。")
	}
}
