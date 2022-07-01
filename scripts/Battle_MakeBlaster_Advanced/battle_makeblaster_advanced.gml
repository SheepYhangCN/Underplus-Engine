///@arg 初始X坐标
///@arg 初始Y坐标
///@arg 目标X坐标
///@arg 目标Y坐标
///@arg 初始角度
///@arg 目标角度
///@arg 横向比例
///@arg 纵向比例
///@arg 颜色
///@arg 移动时间
///@arg 比例拉伸时间
///@arg 帧数切换时间
///@arg 开火帧交替时间
///@arg 开火准备时间
///@arg 开火持续时间
///@arg 开火振动效果
///@arg 退场初始速度
///@arg 退场最终速度
///@arg 退场速度增加时间
///@arg 退场缓动类型
///@arg *Blaster精灵
///@arg *Blaster精灵帧数上限
///@arg *混色效果
///@arg *物体
function Battle_MakeBlaster_Advanced(){
	var obj=battle_bullet_blaster_advanced
	var xx = argument[0];
	var yy = argument[1];
	var idealx = argument[2];
	var idealy = argument[3];
	var angle = argument[4];
	var idealrot = argument[5];
	var xscale = argument[6];
	var yscale = argument[7];
	var color = argument[8];
	var move_time = argument[9];
	var scale_fire_pause_change_time = argument[10];
	var index_fire_pause_change_time = argument[11];
	var index_firing_change_time = argument[12];
	var fire_pause_time = argument[13];
	var fire_stay_time = argument[14];
	var fire_shake_type = argument[15]
	var exit_speed_initial = argument[16];
	var exit_speed_end = argument[17];
	var exit_speed_add_time = argument[18];
	var exit_anim_type = argument[19];
	var sprite=spr_blaster
	if(argument_count >= 21){
	sprite = argument[20];}
	var index_up=0
	if(argument_count >= 22){
	index_up = argument[21];}
	var blend = 1;
	if(argument_count >= 23){
		blend = argument[22];}
	if(argument_count >= 24){
		obj = argument[23];}

	blaster  = instance_create_depth(xx,yy,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,obj);
	blaster.x_target = idealx;
	blaster.y_target = idealy;
	blaster.angle_start = angle;
	blaster.angle_target = idealrot;
	blaster.scale_x = xscale;
	blaster.scale_y = yscale;
	blaster.type = color;
	blaster.move_time = move_time;
	blaster.scale_fire_pause_change_time = scale_fire_pause_change_time;
	blaster.index_fire_pause_change_time = index_fire_pause_change_time;
	blaster.index_firing_change_time = index_firing_change_time;
	blaster.fire_pause_time = fire_pause_time;
	blaster.fire_stay_time = fire_stay_time;
	blaster.fire_shake_type = fire_shake_type;
	blaster._exit_speed_initial = exit_speed_initial;
	blaster._exit_speed_end = exit_speed_end;
	blaster._exit_speed_add_time = exit_speed_add_time;
	blaster._exit_anim_type = exit_anim_type;
	blaster.sprite_index = sprite;
	blaster.blaster_index_up = index_up;
	blaster.color_blend = blend;

	return blaster;
}

///@arg x,y,targetx,targety,angle,target_angle,xscale,yscale,type,move_time,sprite,wait_time,stay_time,*shake_type,*exit_speed_start,*exit_speed_final,*obj
function Blaster_Create_Advanced(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12){
	obj = battle_bullet_blaster_advanced
    xx = argument0
    yy = argument1
    idealx = argument2
    idealy = argument3
    angle = argument4
    idealrot = argument5
    xscale = argument6
    yscale = argument7
    color = argument8
    move_time = argument9
    sprite = argument10
    fire_pause_time = argument11
    fire_stay_time = argument12
    fire_shake_type = -1
    exit_speed_initial = 0
    exit_speed_end = 50
    if (argument_count >= 14)
        fire_shake_type = argument[13]
    if (argument_count >= 15)
        exit_speed_initial = argument[14]
    if (argument_count >= 16)
        exit_speed_end = argument[15]
    if (argument_count >= 17)
        obj = argument[16]
    index_up = 3
    blend = 0
    scale_fire_pause_change_time = 6
    index_fire_pause_change_time = 6
    index_firing_change_time = 3
    exit_speed_add_time = 180
    exit_anim_type = 1
    blaster = instance_create_depth(xx, yy, DEPTH_BATTLE.BULLET_OUTSIDE_HIGH, obj)
    blaster.x_target = idealx
    blaster.y_target = idealy
    blaster.angle_start = angle
    blaster.angle_target = idealrot
    blaster.scale_x = xscale
    blaster.scale_y = yscale
    blaster.type = color
    blaster.move_time = move_time
    blaster.scale_fire_pause_change_time = scale_fire_pause_change_time
    blaster.index_fire_pause_change_time = index_fire_pause_change_time
    blaster.index_firing_change_time = index_firing_change_time
    blaster.fire_pause_time = fire_pause_time
    blaster.fire_stay_time = fire_stay_time
    blaster.fire_shake_type = fire_shake_type
    blaster._exit_speed_initial = exit_speed_initial
    blaster._exit_speed_end = exit_speed_end
    blaster._exit_speed_add_time = exit_speed_add_time
    blaster._exit_anim_type = exit_anim_type
    blaster.sprite_index = sprite
    blaster.blaster_index_up = index_up
    blaster.color_blend = blend
    return blaster;
	}