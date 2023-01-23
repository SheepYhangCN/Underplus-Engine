var attack_damage = instance_create_depth(320,battle_enemy_sans_core.y-100,0,battle_damage);
attack_damage.bar_hp_max = 999999999
attack_damage.bar_hp_original = 999999999
Battle_SetMenuFightDamage(999999999)
attack_damage.damage = 999999999
attack_damage.bar_hp_target = 999999999-Battle_GetMenuFightDamage();
battle_enemy_sans_core._hp=0
audio_play_sound(snd_damage,0,0);
battle_enemy_sans_core._body=8
battle_enemy_sans_core.sweat=1
alarm[1]=120