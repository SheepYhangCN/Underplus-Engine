event_inherited()
moveable = 1
dir = 270
move = 0
impact = 0
_gravity_jump = 0.14
_speed_jump = 4.5
_gravity_fall = 0.2
_jump_time = 0
_stop_time = 0
_jump = 3
_dir = 0
alarm[0] = 1
p = part_type_create()
part_type_alpha2(p, 1, 0)
part_type_life(p, 25, 25)
part_type_sprite(p, 19, 0, 0, 0)
part_type_orientation(p, image_angle, image_angle, 0, 0, 0)
alarm[0]=5