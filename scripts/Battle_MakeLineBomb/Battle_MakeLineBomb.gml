///@arg x,y,*angle,*width,*crossing,*type,*xscale,*yscale,*spawn_time,*wait_time,*stay_time,*leave_time,*shake,*obj,*spr
function Battle_MakeLineBomb(){
var OBJ=battle_bullet_line_bomb
if(argument_count>13){OBJ=argument[13]}
var inst=instance_create_depth(argument[0],argument[1],DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,OBJ)
if(argument_count>2){inst.angle=argument[2]}
if(argument_count>3){inst.width=argument[3]}
if(argument_count>4){inst.crossing=argument[4]}
if(argument_count>5){inst.type=argument[5]}
if(argument_count>6){inst.image_xscale=argument[6]}
if(argument_count>7){inst.image_yscale=argument[7]}
if(argument_count>8){inst.spawn_time=argument[8]}
if(argument_count>9){inst.wait_time=argument[9]}
if(argument_count>10){inst.stay_time=argument[10]}
if(argument_count>11){inst.leave_time=argument[11]}
if(argument_count>12){inst.shake=argument[12]}
if(argument_count>14){inst.sprite_index=argument[14]}
return inst
}