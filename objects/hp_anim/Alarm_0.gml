Anim_Destroy(id)
if(hp+hp_offset>=Player_GetHpMax()){
Anim_Create(id,"hp",0,0,hp,Player_GetHpMax()-hp,10)
}else if(hp+hp_offset<=0){
Anim_Create(id,"hp",0,0,hp,-hp,10)
}else{
Anim_Create(id,"hp",0,0,hp,hp_offset,10)}
alarm[1]=12