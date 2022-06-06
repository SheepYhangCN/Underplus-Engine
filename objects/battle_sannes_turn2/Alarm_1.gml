var blt = instance_create_depth(320,320,DEPTH_BATTLE.BULLET,battle_bullet_bone);
blt.type=2
blt.direction=point_direction(320,320,battle_soul.x,battle_soul.y);
blt.image_angle=point_direction(320,320,battle_soul.x,battle_soul.y);
blt.speed=3.5;
alarm[1]=5;