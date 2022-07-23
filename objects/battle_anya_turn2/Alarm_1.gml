var a=instance_create_depth(10,battle_board.y-30,-1001,battle_platform)
a.move_x=1.5
a.sticky=false
a.width=64
Battle_MakeBone(a.x,a.y-12,32,1.5,0,1,0,90,0,1,-1,battle_bullet_bone,pencil_body,pencil_end)
alarm[1]=90