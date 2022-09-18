x=Battle_GetEnemyCenterPosX(_enemy_slot)
y=Battle_GetEnemyCenterPosY(_enemy_slot)
animsin = 0
sinn = 2
_face_spr=spr_sponge_face
_face = 3
_body = 0
_legs= 0
_hp=1
_hpmax=1
bodyx = x-1.6
bodyy = y+23
legx = x
legy = y+60
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
global.kr=true
Player_SetKR(0)
alarm[1]=1
Battle_SetEnemyName(_enemy_slot,"Spongebob");
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
audio_stop_all()
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetEnemyAtk(1)
Battle_SetPlayerTempInv(0)
global.shield=false
global.shield_useable=false
alarm[3]=1

/*var a=instance_create_depth(0,0,DEPTH_BATTLE.BG,obj_background)
a.sprite_index=spr_bg_bikini_sky
a.image_xscale=0.35
a.image_yscale=0.35
*/
Item_Set(0,item_sponge_krabby_patty)
Item_Set(1,item_sponge_triple_gooberberry_sunrise)
Item_Set(2,item_sponge_bubble)
Item_Set(3,item_sponge_bubble)
Item_Set(4,item_sponge_bubble)
Item_Set(5,item_sponge_bubble)
Item_Set(6,(global.mode=GAME_MODE.HARD ? item_sponge_bubble : item_sponge_bubble_water))
Item_Set(7,item_sponge_chumstick)
hint=0

instance_create_depth(0,0,0,obj_effect_water)