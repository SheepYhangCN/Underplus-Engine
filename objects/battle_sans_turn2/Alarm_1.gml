Battle_MakeBoneTop(battle_board.x-240,20,3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-240,60,3,0,0,0,1)
Battle_MakeBoneTop(battle_board.x+240,20,-3,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x+240,60,-3,0,0,0,1)
alarm[4]=10
if(global.mode=2){
Blaster_Create_Advanced(0,0,battle_soul.x,200,0,-90,0.1,2,0,20,spr_blaster,20,10)
alarm[3]=30
alarm[0]=60
}else{
alarm[1]=60}