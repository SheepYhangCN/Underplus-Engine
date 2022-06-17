var temp=choose(0,1)
if(global.mode=2){
var beamtime=20}else{var beamtime=10}
switch temp{
case 0:
Blaster_Create_New(battle_bullet_gb_new,0,0,0,80,battle_board.x-30,90,10,2.5,2,beamtime)
Blaster_Create_New(battle_bullet_gb_new,0,0,1,80,battle_board.x+30,90,10,2.5,2,beamtime)
break
case 1:
Blaster_Create_New(battle_bullet_gb_new,0,0,1,80,battle_board.x-30,90,10,2.5,2,beamtime)
Blaster_Create_New(battle_bullet_gb_new,0,0,0,80,battle_board.x+30,90,10,2.5,2,beamtime)
break
}
alarm[1]=100