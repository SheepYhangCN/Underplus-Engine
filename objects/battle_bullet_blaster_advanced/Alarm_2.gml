//---Blaster_Intro_Preparation---
image_yscale=1;
Anim_Create(id,"image_index",0,0,0,blaster_index_up-1,index_fire_pause_change_time);
if !blaster_beam_size_set
Anim_Create(id,"_beam_scale",0,0,(scale_x*1),(scale_x*0.8),(index_fire_pause_change_time/3),((index_fire_pause_change_time/3)*2));
else Anim_Create(id,"_beam_scale",0,0,(scale_x*2),(scale_x*1.6),(index_fire_pause_change_time/3),((index_fire_pause_change_time/3)*2));
alarm[3]=index_fire_pause_change_time;
alarm[4]=(index_fire_pause_change_time+2);
alarm[5]=(index_fire_pause_change_time-5);
alarm[8]=index_fire_pause_change_time;