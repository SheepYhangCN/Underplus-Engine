Blaster_Create_Advanced(0,0,battle_board.x,battle_board.y-battle_board.up-50,0,-90,1.5,2,0,20,spr_blaster,25,5)
var a=choose(0,1)
if(a=0){
Blaster_Create_Advanced(0,0,battle_board.x+48,battle_board.y-battle_board.up-50,0,-90,1.5,2,0,20,spr_blaster,25,5)
}
if(a=1){
Blaster_Create_Advanced(0,0,battle_board.x-48,battle_board.y-battle_board.up-50,0,-90,1.5,2,0,20,spr_blaster,25,5)
}
alarm[1]=100