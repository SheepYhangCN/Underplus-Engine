///@arg *range_min,*range_max
function Glitch_Make(){
var a=instance_create_depth(0,0,0,obj_effect_glitch)
if(argument_count>=1){
a.range_min=argument[0]}
if(argument_count>=2){
a.range_max=argument[1]}
return a
}