///@arg *time,*amount
function Blur_Make(){
var a=instance_create_depth(0,0,0,blur_shader)
if(argument_count>=1){
a.duration=argument[0]}
if(argument_count>=2){
a.var_blur_amount=argument[1]}
return a
}