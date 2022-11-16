var _x=lengthdir_x(31,image_angle)
var _y=lengthdir_y(31,image_angle)
var inst=instance_place(x+_x,y+_y,battle_bullet_shieldable)
if(instance_exists(inst)&&inst.enable&&inst.type=2){
	instance_destroy(inst)
	audio_play_sound(snd_ding,0,0)
	image_index=1
	Anim_Create(id,"image_index",0,0,1,-1,1,30)
}
var _xx=lengthdir_x(20,image_angle)
var _yy=lengthdir_y(20,image_angle)
var _inst=instance_place(x+_xx,y+_yy,battle_bullet_shieldable)
if(instance_exists(_inst)&&_inst.type=2){_inst.enable=false}