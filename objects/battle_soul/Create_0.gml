depth=DEPTH_BATTLE.SOUL;
image_speed=0;

follow_board=false;
_inv=0;
instance_create_depth(battle_soul.x, battle_soul.y, 0, asset_get_index(object_get_name(object_index)+"_effect"))
if!(variable_global_exists("_inv")){global._inv=0}