///@arg bone_gap,gap_board,length,type,pause,*duration,*obj
function Battle_MakeBoneWallRound(){
var obj = battle_bullet_bone
var duration = -1
var dir=0
var dir_add=argument[0]
var gap=argument[1]
var length=argument[2]
var type=argument[3]
var pause=argument[4]
if(argument_count>5){
duration=argument[5]}
if(argument_count>6){
obj=argument[6]}

repeat(360/dir_add){
var _x = (battle_board.x + lengthdir_x(gap, dir))
var _y = (battle_board.y + lengthdir_y(gap, dir))

if(duration!=-1){
var bone=Battle_MakeBone(_x,_y,length,0,0,type,0,dir,0,0,((duration + (pause * 2)) + 24),obj)
}else{
var bone=Battle_MakeBone(_x,_y,length,0,0,type,0,dir,0,0,duration,obj)}

with (bone)
        {
		x=(battle_board.x + lengthdir_x(gap+length, dir))
		y=(battle_board.y + lengthdir_y(gap+length, dir))
        Anim_Create(id, "x", 0, 0, x, _x-x, 16, pause)
        Anim_Create(id, "y", 0, 0, y, _y-y, 16, pause)
		if(duration!=-1){
        Anim_Create(id, "x", 0, 0, _x, (battle_board.x + lengthdir_x(gap+length, dir))-_x, 16, (16 + pause + duration))
        Anim_Create(id, "y", 0, 0, _y, (battle_board.y + lengthdir_y(gap+length, dir))-_y, 16, (16 + pause + duration))
		}
        a = instance_create_depth(0, 0, 0, shaker)
        a.target = id
        a.var_name = "y"
        a.shake_distance = 2
        a.shake_speed = 1
        a.shake_random = 0
        a.shake_decrease = 1
        a.delay = (pause + 8)
        }
dir+=dir_add
}
a = instance_create_depth(0, 0, 0, bone_box_round)
a.duration = pause
a.gap=gap-(length/2)
audio_stop_sound(snd_exclamation)
audio_play_sound(snd_exclamation, 0, false)
return;
}