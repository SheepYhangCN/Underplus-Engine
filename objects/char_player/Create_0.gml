event_inherited();

char_id=0;

res_idle_sprite[DIR.UP]=spr_char_frisk_up;
res_idle_sprite[DIR.DOWN]=spr_char_frisk_down;
res_idle_sprite[DIR.LEFT]=spr_char_frisk_right;
res_idle_sprite[DIR.RIGHT]=spr_char_frisk_right;
res_move_sprite[DIR.UP]=spr_char_frisk_up;
res_move_sprite[DIR.DOWN]=spr_char_frisk_down;
res_move_sprite[DIR.LEFT]=spr_char_frisk_right;
res_move_sprite[DIR.RIGHT]=spr_char_frisk_right;
res_move_run_sprite[DIR.UP]=spr_char_frisk_up;
res_move_run_sprite[DIR.DOWN]=spr_char_frisk_down;
res_move_run_sprite[DIR.LEFT]=spr_char_frisk_right;
res_move_run_sprite[DIR.RIGHT]=spr_char_frisk_right;
res_idle_flip_x[DIR.LEFT]=true
res_move_flip_x[DIR.LEFT]=true
res_talk_flip_x[DIR.LEFT]=true

moveable=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;
can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&_moveable_box);

flavor="None"