///@desc Init
audio_stop_all()
//global.kr=1
Player_SetKR(0)
alarm[1]=1
_hp=1
_hpmax=1
Battle_SetEnemyActionNumber(_enemy_slot,3);
if(global.language=0){
Battle_SetEnemyName(_enemy_slot,"Enemy Name");
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionName(_enemy_slot,1,"Pray")
Battle_SetEnemyActionName(_enemy_slot,2,"Heal")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Clear Karma")
Battle_SetEnemyActionInfo(_enemy_slot,2,"{color `lime`}+Full HP")
}else if(global.language=1){
Battle_SetEnemyName(_enemy_slot,"{font 3}敌人名称");
Battle_SetEnemyActionName(_enemy_slot,0,"{font 3}检查")
Battle_SetEnemyActionName(_enemy_slot,1,"{font 3}祈祷")
Battle_SetEnemyActionName(_enemy_slot,2,"{font 3}治疗")
Battle_SetEnemyActionInfo(_enemy_slot,0,"{font 3}查看敌人数据")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{font 3}清除{font 1}Karma")
Battle_SetEnemyActionInfo(_enemy_slot,2,"{color `lime`}+{font 3}满{font 1}HP")
}


ab=instance_create_depth(0,0,0,battle_bg)
ab.image_blend=$E16941
ab.image_yscale=3
ba=instance_create_depth(0,room_height,0,battle_bg)
ba.image_blend=c_orange
ba.image_yscale=-3

aba=instance_create_depth(0,room_height,0,battle_bg)
aba.image_blend=c_aqua
aba.image_angle=90
aba.image_yscale=3
bab=instance_create_depth(room_width,0,0,battle_bg)
bab.image_blend=c_red
bab.image_angle=-90
bab.image_yscale=3