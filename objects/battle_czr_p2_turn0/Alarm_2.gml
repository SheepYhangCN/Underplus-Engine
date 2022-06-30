//Blaster_Create_New(battle_bullet_gb_new,random_range(0,640),random_range(0,480),choose(0,1,2))
Battle_MakeBlaster_Advanced(0,0,battle_soul.x,20,-90,-90,1.8,1.8,0,30,0,20,0,20,20,-1,5,5,0,-1)
//Camera_Shake(5,5)
if(global.mode=2){
alarm[choose(1,2)]=20
}else{
alarm[choose(1,2)]=30}