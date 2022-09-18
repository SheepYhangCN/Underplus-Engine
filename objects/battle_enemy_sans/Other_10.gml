x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
global.kr=1
Player_SetKR(0)
alarm[1]=1
Battle_SetEnemyName(_enemy_slot,"Sans");
Battle_SetEnemyActionNumber(_enemy_slot,1);
if(global.language=LANGUAGE.ENGLISH){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"Heal")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+Full HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
}else if(global.language=LANGUAGE.SCHINESE){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"治疗")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+满HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")

}
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
audio_stop_all()
audio_play_sound(bgm_bird,0,1)
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetEnemyAtk(2)
global.shield=false
global.shield_useable=false

animsin = 0
sinn = 2
head = instance_create_depth(x-1.6, y-30, 0, titr_head)
body = instance_create_depth(x-1.6, y+13, 0, titr_body)
legs = instance_create_depth(x, y+60, 0, titr_legs)
