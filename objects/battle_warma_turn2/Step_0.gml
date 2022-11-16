if(Battle_GetTurnTime()>=80&&Battle_GetTurnTime()<=720){
if(temp=false&&_x<512){_x+=4}
if(_x>=512){temp=true}
if(temp=true&&_x>128){_x-=4}
if(_x<=128){temp=false}
}
if(Battle_GetTurnTime()=80){Anim_Create(id,"_x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_x,battle_enemy_warma.x-_x,60);alarm[1]=-1}