if(Battle_GetState()=BATTLE_STATE.MENU||Battle_GetState()=BATTLE_STATE.IN_TURN){
animsin += sinn
head.x = (headx + cos((animsin / 3)))
head.y = (heady + sin((animsin / 1.5)))
body.x = (bodyx + cos((animsin / 3)))
body.y = (bodyy + (sin((animsin / 1.5)) / 1.5))
legs.x = legsx
legs.y = legsy}
alarm[2]=5