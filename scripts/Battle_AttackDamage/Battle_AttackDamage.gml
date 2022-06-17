// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Battle_AttackDamage(){
	var	attack_damage = instance_create_depth(320,y,0,battle_damage);
	var inst=Battle_GetEnemy(_enemy_slot)
	attack_damage.bar_hp_max = argument[0];
	attack_damage.bar_hp_original = argument[1];
	Battle_SetMenuFightDamage(argument[2])
	attack_damage.damage = Battle_GetMenuFightDamage();
	audio_play_sound(snd_damage,0,0)
	attack_damage.bar_hp_target = argument[1]-Battle_GetMenuFightDamage();
	inst._hp=bar_hp_target
}