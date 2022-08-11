var a = instance_create_depth(battle_board.x,battle_board.y,-1000,battle_bullet_bone);
a.direction=point_direction(battle_board.x,battle_board.y,battle_soul.x,battle_soul.y);
a.angle=point_direction(battle_board.x,battle_board.y,battle_soul.x,battle_soul.y);
a.speed=3;
a.type=2
a.length=40
audio_play_sound(snd_cut,0,0)
alarm[1]=30
alarm[1]=30