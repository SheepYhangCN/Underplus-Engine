if(soullock){
battle_soul_blue.x=320
if(timer<1760&&timer>1180&&timer mod 180 == 0){
Anim_Create(battle_enemy_sponge_p2,"x",0,0,battle_enemy_sponge_p2.x+640,-1280,120)
Anim_Create(battle_enemy_sponge_p2,"legx",0,0,320+640,-1280,120)
Anim_Create(battle_enemy_sponge_p2,"bodyx",0,0,320-1.6+640,-1280,120)
Anim_Create(battle_button_fight,"x",0,0,32+53.5+640,-1280,120)
Anim_Create(battle_button_act,"x",0,0,185+53.5+640,-1280,120)
Anim_Create(battle_button_item,"x",0,0,345+53.5+640,-1280,120)
Anim_Create(battle_button_mercy,"x",0,0,500+53.5+640,-1280,120)
}
}