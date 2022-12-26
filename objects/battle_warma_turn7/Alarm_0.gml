var a=Battle_MakeLineBomb(battle_soul.x,battle_soul.y,random(360),40,1,0,1,1,10,45)
a.sprite_index=spr_rabbit_bomb
Battle_MakeWave(_x,_y,choose(1,2),0.1,1,battle_bullet_wave_warma)
alarm[0]=80