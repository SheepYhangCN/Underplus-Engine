///@arg dir
function Titr_BlueSoulControl(){
if(argument[0]=DIR.UP){
Anim_Create(titr_body,"image_index",0,0,0,2,0)
Anim_Create(titr_body,"image_index",0,0,2,1,0,5)
Anim_Create(titr_body,"image_index",0,0,3,-3,0,30)
}
if(argument[0]=DIR.DOWN){
Anim_Create(titr_body,"image_index",0,0,0,2,0)
Anim_Create(titr_body,"image_index",0,0,2,2,0,5)
Anim_Create(titr_body,"image_index",0,0,4,-4,0,30)
}
if(argument[0]=DIR.LEFT||argument[0]=DIR.RIGHT){
Anim_Create(titr_body,"image_index",0,0,0,5,0)
Anim_Create(titr_body,"image_index",0,0,5,1,0,5)
Anim_Create(titr_body,"image_index",0,0,6,-6,0,30)
}
BlueSoulControl(argument[0])
titr_head.sprite_index=spr_sans_blue_eyes
titr_head.alarm_time=10
titr_head.alarm[0]=10
Anim_Create(titr_head,"alarm_time",0,0,10,-11,0,28)
Anim_Create(titr_head,"sprite_index",0,0,spr_sans_blue_eyes,spr_sans_face-spr_sans_blue_eyes,0,30)
Anim_Create(titr_head,"image_index",0,0,titr_head.image_index,-titr_head.image_index,0,31)
return
}