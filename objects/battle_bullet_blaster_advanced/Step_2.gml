var LEN=8*scale_y;
var X=x+lengthdir_x(LEN,image_angle);
var Y=y+lengthdir_y(LEN,image_angle);
_inst.x=X;
_inst.y=Y;
_inst.image_angle=image_angle;
if !blaster_beam_size_set
_inst.image_xscale=scale_y;
else _inst.image_xscale=scale_y*2;
_inst.image_yscale=_beam_scale;
_inst.image_alpha=_beam_alpha;

if(_beam_scale=0&&_beam_alpha=0&&(x>room_width||x<0||y>room_height||y<0)){instance_destroy()}