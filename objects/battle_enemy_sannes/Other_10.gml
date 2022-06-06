x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemyName(_enemy_slot,"{font 0}Sannes");
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
Battle_SetEnemyActionNumber(_enemy_slot,2);
global.kr=1
Player_SetKR(0)
alarm[1]=1
if(global.language=0){
if(global.mode=2){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"Pray")
}else if(global.mode=1){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"Heal")}
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionName(_enemy_slot,1,"Flirt")
}else if(global.language=1){
if(global.mode=2){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"{font 3}祈祷{font 0}")
}else if(global.mode=1){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"{font 3}治疗{font 0}")}
Battle_SetEnemyActionName(_enemy_slot,0,"{font 3}检查{font 0}")
Battle_SetEnemyActionName(_enemy_slot,1,"{font 3}调情{font 0}")
}
Battle_SetPlayerTempAtk(10);
Battle_SetEnemyDEF(_enemy_slot,514);
_hp = 171771
_hpmax = 171771
audio_stop_all()
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Remove(0)
Item_Add(item_tml)
Item_Add(item_apple)
Item_Add(item_apple)
Item_Add(item_apple)
Item_Add(item_apple)
Item_Add(item_apple)
Item_Add(item_apple)
Item_Add(item_cake)