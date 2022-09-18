x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
global.kr=1	
Player_SetKR(0)
alarm[1]=1
Battle_SetEnemyName(_enemy_slot,"Sans");
Battle_SetEnemyActionNumber(_enemy_slot,2);
if(global.language=LANGUAGE.ENGLISH){
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
Battle_SetEnemyActionName(_enemy_slot,1,"Taunt")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Taunt enemy")
}else if(global.language=LANGUAGE.SCHINESE){
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
Battle_SetEnemyActionName(_enemy_slot,1,"嘲讽")
Battle_SetEnemyActionInfo(_enemy_slot,1,"嘲讽敌人")
}
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
audio_stop_all()
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetEnemyAtk(1)
Item_Set(0,item_starry_spaghetti)
Item_Set(1,item_starry_spaghetti)
Item_Set(2,item_starry_spaghetti)
Item_Set(3,item_noodles)
Item_Set(4,item_steak)
Item_Set(5,item_starry_yuhang)
Item_Set(6,item_starry_ml17)
Item_Set(7,item_starry_stars)
item_temp=Battle_GetPlayerTempSpd()
animsin = 0
sinn = 2
head = instance_create_depth(x, y-30, 0, starry_sans_head)
body = instance_create_depth(x, y+10, 0, starry_sans_body)
legs = instance_create_depth(x+0.6, y+60, 0, starry_sans_legs)

instance_create_depth(0,0,DEPTH_BATTLE.BG,obj_background)
if!(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=browser_ie_mobile||os_browser=browser_ie_mobile){
instance_create_depth(0,0,DEPTH_BATTLE.BG-1,obj_effect_space)}