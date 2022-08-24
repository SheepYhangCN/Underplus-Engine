///@descr moveable1 check
//these complex code from object: char
moveable1=true
if(char_player.dir=DIR.RIGHT){
var list=_collision_list1;
ds_list_clear(list);
var num=instance_place_list(x+20,y,block,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.block_enabled){
			moveable1=false
			break;
		}
	}
	procl+=1;
}}

if(char_player.dir=DIR.LEFT){
var list=_collision_list1;
ds_list_clear(list);
var num=instance_place_list(x-20,y,block,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.block_enabled){
			moveable1=false
			break;
		}
	}
	procl+=1;
}}

if(char_player.dir=DIR.DOWN){
var list=_collision_list1;
ds_list_clear(list);
var num=instance_place_list(x,y+20,block,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.block_enabled){
			moveable1=false
			break;
		}
	}
	procl+=1;
}}

if(char_player.dir=DIR.UP){
var list=_collision_list1;
ds_list_clear(list);
var num=instance_place_list(x,y-20,block,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.block_enabled){
			moveable1=false
			break;
		}
	}
	procl+=1;
}}