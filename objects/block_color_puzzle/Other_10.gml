///@descr blue check
//these complex code from object: char

var list=_collision_list;
ds_list_clear(list);
var num=instance_place_list(x+20,y,block_color_puzzle,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.image_blend=c_yellow){
			alarm[0]=-1
			alarm[0]=6
			audio_play_sound(snd_shock,0,0)
			break;
		}
	}
	procl+=1;
}

var list=_collision_list;
ds_list_clear(list);
var num=instance_place_list(x-20,y,block_color_puzzle,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.image_blend=c_yellow){
			alarm[0]=-1
			alarm[0]=6
			audio_play_sound(snd_shock,0,0)
			break;
		}
	}
	procl+=1;
}

var list=_collision_list;
ds_list_clear(list);
var num=instance_place_list(x,y+20,block_color_puzzle,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.image_blend=c_yellow){
			alarm[0]=-1
			alarm[0]=6
			audio_play_sound(snd_shock,0,0)
			break;
		}
	}
	procl+=1;
}
var list=_collision_list;
ds_list_clear(list);
var num=instance_place_list(x,y-20,block_color_puzzle,list,false);
var procl=0;
repeat(num){
	var inst=list[|procl];
	if(instance_exists(inst)){
		if(inst.image_blend=c_yellow){
			alarm[0]=-1
			alarm[0]=6
			audio_play_sound(snd_shock,0,0)
			break;
		}
	}
	procl+=1;
}