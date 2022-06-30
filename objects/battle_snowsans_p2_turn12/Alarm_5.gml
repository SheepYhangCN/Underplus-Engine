instance_destroy(titr_head)
instance_destroy(titr_body)
instance_destroy(titr_legs)
var a=instance_create_depth(240,battle_enemy_snowsans_p2.y,-203,battle_death_particle)
a.sprite=spr_sans_almost_dead
audio_play_sound(snd_vaporize,1,0)
instance_create_depth(240,battle_enemy_snowsans_p2.y,0,utse_sans_loosecoat)
audio_play_sound(snd_impact,0,0)
alarm[6]=30