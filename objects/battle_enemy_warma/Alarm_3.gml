global.mode=GAME_MODE.HARD
Anim_Create(battle_enemy_warma,"_body",0,0,0,3,0)
Anim_Create(battle_enemy_warma,"_body",0,0,3,1,0,5)
Anim_Create(battle_enemy_warma,"_body",0,0,4,-4,0,30)
audio_play_sound(snd_impact,0,0)
Player_SetHp(1)
Player_SetHpMax(20)