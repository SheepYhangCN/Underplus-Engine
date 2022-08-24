with (instance_create_depth(battle_board.x, battle_board.y, 0, obj_bone_cube))
{
	Anim_Create(id, "scalex", 1, 1, 0, 120, 30)
	Anim_Create(id, "scaley", 1, 1, 0, 120, 30)
	Anim_Create(id, "scalez", 1, 1, 0, 120, 30)
	Anim_Create(id, "scalex", 1, 2, 120, -10, 30, 30, -1, 2)
	Anim_Create(id, "scaley", 1, 2, 120, -10, 30, 30, -1, 2)
	Anim_Create(id, "scalez", 1, 2, 120, -10, 30, 30, -1, 2)
	Anim_Create(id, "anglex", 1, 2, 70, -40, 60, 0, -1, 2)
	anglex = 50
	angley = 40
	anglez = 60
	angxs = 0.5
	angys = 0.5
	angzs = 0.5
}