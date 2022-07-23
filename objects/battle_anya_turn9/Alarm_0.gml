var angle=random(360)
var a=Battle_MakeBone(battle_soul.x+lengthdir_x(350,angle),battle_soul.y+lengthdir_y(350,angle),40,0,0,0,1,angle+180,0,1,-1,battle_bullet_bone_hit,pencil_body,pencil_end)
Anim_Create(a,"x",0,0,battle_soul.x+lengthdir_x(350,angle),-2*lengthdir_x(350,angle),180)
Anim_Create(a,"y",0,0,battle_soul.y+lengthdir_y(350,angle),-2*lengthdir_y(350,angle),180)
alarm[0]=20