if(instance_number(hp_anim)>1){
Player_SetHp(Player_GetHp()+hp_offset)
with(hp_anim){instance_destroy()}
}