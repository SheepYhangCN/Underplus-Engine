///@arg *range,*shake
function RGB_Make(){
var a=instance_create_depth(0,0,0,obj_effect_rgb)
if(argument_count>0){
a.range=argument[0]}
if(argument_count>1){
a.shake=argument[1]}
return a
}