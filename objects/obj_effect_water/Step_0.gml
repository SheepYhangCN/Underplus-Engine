with(battle_soul){
if(y > (room_height - obj_effect_water.height)){
Player_SetSpd(3.5)
if(Battle_GetState()=BATTLE_STATE.IN_TURN&&!(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua)||instance_exists(battle_soul_green)||instance_exists(battle_soul_green_aqua))){
y-=0.5
}}else{
Player_SetSpd(2)}
}