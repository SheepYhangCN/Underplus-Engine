///@arg dir
function BlueSoulControl_Titr(){
if(argument[0]=DIR.UP){
Anim_Create(titr_body,"image_index",0,0,0,2,0)
Anim_Create(titr_body,"image_index",0,0,2,1,0,5)
Anim_Create(titr_body,"image_index",0,0,3,-3,0,30)
}
if(argument[0]=DIR.DOWN){
Anim_Create(titr_body,"image_index",0,0,0,4,0)
Anim_Create(titr_body,"image_index",0,0,4,1,0,5)
Anim_Create(titr_body,"image_index",0,0,5,-5,0,30)
}
if(argument[0]=DIR.LEFT){
Anim_Create(titr_body,"image_index",0,0,0,7,0)
Anim_Create(titr_body,"image_index",0,0,7,-1,0,5)
Anim_Create(titr_body,"image_index",0,0,6,-6,0,30)
}
if(argument[0]=DIR.RIGHT){
Anim_Create(titr_body,"image_index",0,0,0,6,0)
Anim_Create(titr_body,"image_index",0,0,6,1,0,5)
Anim_Create(titr_body,"image_index",0,0,7,-7,0,30)
}
BlueSoulControl(argument[0])
/*titr_head.sprite_index=spr_sans_blue_eyes
Anim_Create(titr_head,"sprite_index",0,0,spr_sans_blue_eyes,spr_sans_face-spr_sans_blue_eyes,0,30)
Anim_Create(titr_head,"image_index",0,0,0,0,0,31)*/
return
}