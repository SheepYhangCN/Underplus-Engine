event_inherited()
char_player.alarm[0]=-1
char_player.moveable=false
camera.target=noone
Anim_Create(camera,"y",0,0,camera.y,-130,60,60)
instance_create_depth(char_player.x,180,0,obj_sans_core)