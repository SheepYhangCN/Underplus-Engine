/*ab=instance_create_depth(0,0,0,battle_bg)
ab.image_blend=$E16941
ab.image_yscale=6
ab.alarm[1]=1
ab.tempscale=6
ba=instance_create_depth(0,room_height,0,battle_bg)
ba.image_blend=c_orange
ba.image_yscale=-6
ba.alarm[1]=1
ba.tempscale=-6*/
depth=DEPTH_UI.TEXT
instance_create_depth(0,0,0,obj_effect_space)

//rainbow=0
choice=0
choice_max=2
phase=0
phases=0
temp=0
quit=0
_shop=0
enabled=true
warning_color=c_white
warning_countdown=-1
