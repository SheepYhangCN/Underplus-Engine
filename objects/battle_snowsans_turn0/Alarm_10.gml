audio_play_sound(snd_cut,0,0)
var fuck=choose(0,1,2,3)
switch fuck{
case 0:
Battle_MakeBoneBottom(battle_board.x-64,120,2,1,0,0,1)
break
case 1:
Battle_MakeBoneTop(battle_board.x+64,120,-2,1,0,0,1)
break
case 2:
Battle_MakeBoneLeft(battle_board.y-64,120,2,1,0,0,1)
break
case 3:
Battle_MakeBoneRight(battle_board.y+64,120,-2,1,0,0,1)
break
}
alarm[10]=80