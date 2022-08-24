event_inherited();

_dir=choose(DIR.LEFT,DIR.RIGHT);
//_dir=DIR.RIGHT
_input_acceptable=false
_aim_x=0;
_aim_x_1=0;
_aim_image=0;
base_xscale=1
base_yscale=1
image_alpha=0
if(global.battle=11){
sprite_index=spr_battle_menu_fight_bg_high
//base_xscale=0.87
//base_yscale=0.97
}
Anim_Create(self,"image_alpha",0,0,0,1,10)
alarm[3]=1 