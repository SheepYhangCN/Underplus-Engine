var a=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
BlueSoulControl_Anya(a)
if(a=DIR.DOWN){Battle_MakeBoneWallBottom(30,30,30,0,battle_bullet_bone,pencil_body,pencil_end)}
if(a=DIR.UP){Battle_MakeBoneWallTop(30,30,30,0,battle_bullet_bone,pencil_body,pencil_end)}
if(a=DIR.LEFT){Battle_MakeBoneWallLeft(30,30,30,0,battle_bullet_bone,pencil_body,pencil_end)}
if(a=DIR.RIGHT){Battle_MakeBoneWallRight(30,30,30,0,battle_bullet_bone,pencil_body,pencil_end)}
alarm[0]=65