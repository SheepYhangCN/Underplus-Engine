var a=Battle_MakeBoneBottom(battle_board.x-120-32,0,2,2,0,0,1,-1,battle_bullet_bubble)
a.y-=32
var a=Battle_MakeBoneTop(battle_board.x-120-32,0,2,0,0,0,1,-1,battle_bullet_bubble)
a.y+=32

var a=Battle_MakeBoneBottom(battle_board.x+120+32,0,-2,0,0,0,1,-1,battle_bullet_bubble)
a.y-=32
var a=Battle_MakeBoneTop(battle_board.x+120+32,0,-2,2,0,0,1,-1,battle_bullet_bubble)
a.y+=32
alarm[0]=100