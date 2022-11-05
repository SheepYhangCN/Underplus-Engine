///@arg x,y,targetx,targety,*type,*wait_time,*move_time,*speed,*angle,*image_angle,*auto_destroy,*tween,*obj,*spr
function Battle_MakeFriendlyPellet(){
var OBJ=battle_bullet_friendlypellet
var _x=argument[0]
var _y=argument[1]
var targetx=argument[2]
var targety=argument[3]
if(argument_count>12){
OBJ=argument[12]}
var a=instance_create_depth(_x,_y,0,OBJ)
a.targetx=targetx
a.targety=targety
if(argument_count>4){
a.type=argument[4]}
if(argument_count>5){
a.wait_time=argument[5]}
if(argument_count>6){
a.move_time=argument[6]}
if(argument_count>7){
a.spd=argument[7]}
if(argument_count>8){
a.angle=argument[8]}
if(argument_count>9){
a.image_angle=argument[9]}
if(argument_count>10){
a.auto_destroy=argument[10]}
if(argument_count>11){
a.tween=argument[11]}
if(argument_count>13){
a.sprite_index=argument[13]}
return a
}