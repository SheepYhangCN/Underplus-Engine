event_inherited();
if(global.mode=GAME_MODE.HARD){length=48}else{length=32}
Battle_MakeBoneWallTop(5,length,-1,0,battle_bullet_bone,pencil_body,pencil_end)
Battle_MakeBoneWallBottom(5,length,-1,0,battle_bullet_bone,pencil_body,pencil_end)
Battle_MakeBoneWallLeft(5,length,-1,0,battle_bullet_bone,pencil_body,pencil_end)
Battle_MakeBoneWallRight(5,length,-1,0,battle_bullet_bone,pencil_body,pencil_end)
Battle_SetSoul(battle_soul_orange)
alarm[0]=30