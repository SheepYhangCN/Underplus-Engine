///@arg x,y,angle_x,angle_y,angle_z,rotate_x,rotate_y,rotate_z,scale_x,scale_y,scale_z,*obj,*spr_body,*spr_end
function Battle_MakeBoneCube(){
var _x=argument[0]
var _y=argument[1]
var angle_x=argument[2]
var angle_y=argument[3]
var angle_z=argument[4]
var rotate_x=argument[5]
var rotate_y=argument[6]
var rotate_z=argument[7]
var scale_x=argument[8]
var scale_y=argument[9]
var scale_z=argument[10]
var inst=instance_create_depth(_x,_y,0,obj_bone_cube)
inst.anglex=angle_x
inst.angley=angle_y
inst.anglez=angle_z
inst.angxs=rotate_x
inst.angys=rotate_y
inst.angzs=rotate_z
inst.scalex=scale_x
inst.scaley=scale_y
inst.scalez=scale_z
if(argument_count>11){inst.obj=argument[11]}
if(argument_count>12){inst.spr_body=argument[12]}
if(argument_count>13){inst.spr_end=argument[13]}
return inst
}