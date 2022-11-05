///@arg x,y,targetx,targety,*type,*wait_time,*speed,*image_angle,*auto_destroy,*tween,*obj,*spr
function Battle_MakeFriendlyPellet_Old(){
var OBJ=battle_bullet_friendlypellet_old
var _x=argument[0]
var _y=argument[1]
var targetx=argument[2]
var targety=argument[3]
if(argument_count>10){
OBJ=argument[10]}
var a=instance_create_depth(_x,_y,0,OBJ)
a.targetx=targetx
a.targety=targety
if(argument_count>4){
a.type=argument[4]}
if(argument_count>5){
a.wait_time=argument[5]}
if(argument_count>6){
a.spd=argument[6]}
if(argument_count>7){
a.image_angle=argument[7]}
if(argument_count>8){
a.auto_destroy=argument[8]}
if(argument_count>9){
a.tween=argument[9]}
if(argument_count>11){
a.sprite_index=argument[11]}
return a
}