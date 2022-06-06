///@desc Menu Switch
if(Battle_GetMenu()=3){
		random_flash=choose(0,1)
		if(random_flash=0){
        Anim_Create(id, "x", 2, 1, 320, 100, 25)
        Anim_Create(id, "x", 2, 0, 420, -100, 25, 35)
		}else if(random_flash=1){
        Anim_Create(id, "x", 2, 1, 320, -100, 25)
        Anim_Create(id, "x", 2, 0, 220, 100, 25, 35)}}