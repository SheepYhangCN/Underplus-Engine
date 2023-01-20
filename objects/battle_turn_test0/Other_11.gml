var a=instance_create_depth(battle_board.x,battle_board.y+20,-1001,battle_platform)
//a.angle=25
a.bounce=true
a.hspeed=0.5
a.sticky=true
a.angle=10
battle_soul.y=270
Battle_SetSoul(battle_soul_blue)
var a=Battle_MakeBoneBottom(280,40,0,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
var a=Battle_MakeBoneBottom(320,40,0,0,0,0,1)
var a=Battle_MakeBoneBottom(360,40,0,0,0,0,1)
a.angle=15
//alarm[0]=1