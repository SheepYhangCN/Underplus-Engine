///@arg x,y,*type,*speed,*begin_scale,*obj
function Battle_MakeWave(){
var X=argument[0]
var Y=argument[1]
var OBJ=battle_bullet_wave
if(argument_count>5){OBJ=argument[5]}
var inst=instance_create_depth(X,Y,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,OBJ)
if(argument_count>2){inst.type=argument[2]}
if(argument_count>3){inst._speed=argument[3]}
if(argument_count>4){inst.image_xscale=argument[4]}
if(argument_count>4){inst.image_yscale=argument[4]}
return inst
}