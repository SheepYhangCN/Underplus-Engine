//---Beam_Fluctuating---
_beam_sin=_beam_sin+0.306;
if !blaster_beam_size_set
_beam_scale=((scale_x*1.8)+(sin(_beam_sin)/3.202));
else _beam_scale=((scale_x*3.6)+(sin(_beam_sin)/3.202));
alarm[4]=1;