x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
//a=instance_create_depth(0,-5,0,battle_bg)
//b=instance_create_depth(0,room_height,0,battle_bg)
//a.image_blend=$E16941
//b.image_blend=$E16941
//b.image_yscale=-1
//global.kr=1
Player_SetKR(0)
alarm[1]=1
Battle_SetEnemyActionNumber(_enemy_slot,1);
if(global.language=0){
Battle_SetEnemyName(_enemy_slot,"{font 0}Sans");
if(global.mode=1){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"Heal")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+Full HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
}else if(global.language=1){
Battle_SetEnemyName(_enemy_slot,"{font 0}Sans");
if(global.mode=1){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"{font 3}治疗")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+{font 3}满{font 1}HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"{font 3}检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"{font 3}查看敌人数据")

}
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
audio_stop_all()
Player_SetLv(8)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())

Border_SetEnabled(true)
Border_SetSprite(spr_border_snowdin)
