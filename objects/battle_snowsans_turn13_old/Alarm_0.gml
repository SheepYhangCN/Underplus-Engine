var temp=irandom_range(0,7)
switch temp{
case 0:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,200,0,10,0.5,2)
break
case 1:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x-20,200,0,10,0.5,2)
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x+20,200,0,10,0.5,2)
break
case 2:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x,400,180,10,0.5,2)
break
case 3:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x-20,400,180,10,0.5,2)
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x+20,400,180,10,0.5,2)
break
case 4:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,100,battle_board.y+10,90,10,0.5,2)
break
case 5:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,100,battle_board.y+20,90,10,0.5,2)
Blaster_Create_New(battle_bullet_gb_new,0,0,0,100,battle_board.y-20,90,10,0.5,2)
break
case 6:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,540,battle_board.y+10,-90,10,0.5,2)
break
case 7:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,540,battle_board.y-20,-90,10,0.5,2)
Blaster_Create_New(battle_bullet_gb_new,0,0,0,540,battle_board.y+20,-90,10,0.5,2)
break
}
if(global.mode=2){
alarm[0]=45}else{
alarm[0]=60}