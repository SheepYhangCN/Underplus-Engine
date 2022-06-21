///@arg border_spr_num
function Border_Get_Sprite(){
	var spr=argument[0]
	switch argument[0]{
	case 0:
	var spr=noone
	break
	case 1:
	var spr=spr_border_simple
	break
	case 2:
	var spr=spr_border_sepia
	break
	case 3:
	var spr=spr_border_rad
	break
	case 4:
	var spr=spr_border_dog
	break
	}
	return spr
}
