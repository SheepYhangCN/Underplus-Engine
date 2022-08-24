var a = instance_create_depth(320,180,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_bullet_bone);
a.direction=point_direction(320,180,battle_soul.x,battle_soul.y);
a.angle=point_direction(320,180,battle_soul.x,battle_soul.y);
a.speed=3;
a._bone_body=pencil_body
a._bone_end=pencil_end
alarm[0]=30
