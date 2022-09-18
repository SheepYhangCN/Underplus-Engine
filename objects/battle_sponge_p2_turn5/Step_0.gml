if(Battle_GetTurnTime()=600){Anim_Create(camera,"angle",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,0,180,60)}
if(Battle_GetTurnTime()=360){Anim_Create(camera,"angle",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,180,-180,60)}
if(Battle_GetTurnTime()=300){
Anim_Create(camera,"scale_y",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,1,-2,60)
Anim_Create(camera,"y",ANIM_TWEEN.BACK,ANIM_EASE.IN_OUT,0,room_height,60)}