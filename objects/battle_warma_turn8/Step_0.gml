if(Battle_GetState()=BATTLE_STATE.IN_TURN){timer+=1}
if(timer=1){
var a=Battle_MakeLineBomb(battle_board.x,battle_board.y,0,10,2,0,1,1,10,40,30,10)
a.sprite_index=spr_rabbit_bomb}
if(timer=90){
var a=Battle_MakeLineBomb(battle_board.x-128,battle_board.y,0,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x+128,battle_board.y,0,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x,battle_board.y-128,0,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x,battle_board.y+128,0,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=160){
var a=Battle_MakeLineBomb(battle_board.x-128,battle_board.y-128,45,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x+128,battle_board.y+128,45,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x+128,battle_board.y-128,45,30)
a.sprite_index=spr_rabbit_bomb
var a=Battle_MakeLineBomb(battle_board.x-128,battle_board.y+128,45,30)
a.sprite_index=spr_rabbit_bomb
}
if(timer=240){
alarm[0]=1
alarm[1]=45
}
if(timer=640){alarm[0]=-1;alarm[1]=-1}
if(timer=680){Battle_EndTurn()}