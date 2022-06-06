///@arg 中心X坐标
///@arg 顶端起始Y坐标
///@arg 骨头长度
///@arg 骨头颜色
///@arg 骨头数量
///@arg 骨头间隔长度
///@arg 骨头出场时间
///@arg 骨头出场间隔时间
///@arg 骨头持续时间
///@arg 骨头出场动画效果
///@arg *骨头出场延迟
function Battle_MakeBoneWallLeftAnim(){
var bone_x = argument[0];
var bone_top_y = argument[1];
var bone_length = argument[2];
var bone_color = argument[3];
var bone_count = argument[4];
var bones_between_length = argument[5];
var bone_intro_time = argument[6];
var bones_between_delay = argument[7];
var bones_duration = argument[8];
var bones_intro_anim = argument[9];
var bone_intro_delay = 10;
if (argument_count = 11)
var bone_intro_delay = argument[10];

var tween;
var ease;
switch (bones_intro_anim){
case 0 :
tween = 2;
ease = 2;
break;

case 1 :
tween = 8;
ease = 1;
break;

case 2 :
tween = 10;
ease = 1;
break;
	
case 3 :
tween = 0;
ease = 0;
break;	
}
	
var num = 0;
repeat bone_count{
bone1=Battle_MakeBoneH(bone_x,bone_top_y+bones_between_length*num,0,0,0,bone_color,0,0,0,1);
Anim_Create(bone1,"length",tween,ease,0,bone_length,bone_intro_time,bones_between_delay*num+bone_intro_delay);
Anim_Create(bone1,"length",tween,ease,bone_length,-bone_length,bone_intro_time-2,bones_between_delay*num+bone_intro_delay+bones_duration);
num += 1;
}
}