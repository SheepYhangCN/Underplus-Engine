var attack_damage = instance_create_depth(240,battle_enemy_snowsans_p2.y-100,0,battle_damage);
attack_damage.bar_hp_max = 999999999
attack_damage.bar_hp_original = 999999999
Battle_SetMenuFightDamage(999999999)
attack_damage.damage = 999999999
attack_damage.bar_hp_target = 999999999-Battle_GetMenuFightDamage();
battle_enemy_snowsans_p2._hp=0
audio_play_sound(snd_damage,0,0);
titr_body.image_index=7
titr_head.sweat=1
alarm[1]=120