_inst.type=type
_inst.sprite_index=_inst_spr
if (sprite_width>=100||sprite_height>=100)
blaster_beam_size_set=1;
else blaster_beam_size_set=0;
switch (_exit_anim_type)
{
   case 0:
   _exit_anim_tween=0;
   _exit_anim_ease=0;
	break;
	
	case 1:
   _exit_anim_tween=2;
   _exit_anim_ease=1;
	break;
	
	case 2:
	_exit_anim_tween=2;
	_exit_anim_type=2;
	break;
}