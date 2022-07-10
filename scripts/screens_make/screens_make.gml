///@arg weight,height,zoom
function Screens_Make(){
var a=instance_create_depth(0,0,0,obj_effect_screens)
a.weight=argument[0]
a.height=argument[1]
a.s=argument[2]
return a
}