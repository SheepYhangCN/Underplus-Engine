var a=Battle_MakeBoneBottom(battle_board.x-battle_board.left-32,0,2,0,0,0,1,-1,battle_bullet_bubble)
var b=Battle_MakeBoneTop(battle_board.x+battle_board.right+32,0,-2,0,0,0,1,-1,battle_bullet_bubble)
a.y-=12
b.y+=12
audio_play_sound(snd_cut,0,0)
alarm[0]=60