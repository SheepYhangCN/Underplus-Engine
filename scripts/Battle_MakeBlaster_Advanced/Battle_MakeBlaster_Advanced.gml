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
function Battle_MakeBlaster_Advanced(){
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

	blaster  = instance_create_depth(xx,yy,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_bullet_blaster_advanced);
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