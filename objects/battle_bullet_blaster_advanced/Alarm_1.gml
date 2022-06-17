//---Blaster_Intro_Scale_Anim---
Anim_Create(id,"image_yscale",0,0,1,-0.25,scale_fire_pause_change_time);
Anim_Create(id,"image_yscale",0,0,0.75,0.25,scale_fire_pause_change_time,scale_fire_pause_change_time);
alarm[2]=scale_fire_pause_change_time+1;