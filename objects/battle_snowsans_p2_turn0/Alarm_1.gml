///@descr 四个自机狙
var angle=random_range(-180,180)
var angle1=random_range(-180,180)
var angle2=random_range(-180,180)
var angle3=random_range(-180,180)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(80,angle),battle_soul.y+lengthdir_y(80,angle),0,angle+180,1,2,0,20,spr_blaster,60,30)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(80,angle1),battle_soul.y+lengthdir_y(80,angle1),0,angle1+180,1,2,0,20,spr_blaster,60,30)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(80,angle2),battle_soul.y+lengthdir_y(80,angle2),0,angle2+180,1,2,0,20,spr_blaster,60,30)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(80,angle3),battle_soul.y+lengthdir_y(80,angle3),0,angle3+180,1,2,0,20,spr_blaster,60,30)