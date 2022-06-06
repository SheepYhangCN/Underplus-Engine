//Blaster_Create(blaster_object,color,x_start,y_start,x_target,y_target,angle_start,angle_target,scale,wait_release,wait_disappear)
Blaster_Create(battle_bullet_tomblaster,choose(0,1,2),0,0,550,battle_soul.y,0,180,1,20,20)
if(global.mode=2){
alarm[choose(0,1,2,3)]=20}else{
alarm[choose(0,1,2,3)]=35}