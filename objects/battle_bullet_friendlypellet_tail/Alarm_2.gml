alarm[1]=wait_time
Anim_Create(id,"x",(tween ? ANIM_TWEEN.BACK : 0),ANIM_EASE.OUT,x,targetx-x,move_time)
Anim_Create(id,"y",(tween ? ANIM_TWEEN.BACK : 0),ANIM_EASE.OUT,y,targety-y,move_time)
spr0 = sprite_index;//物体精灵
spr1 = sprite_index//拖尾纹理精灵(需注意:纹理精灵的纹理页面需调为{ (独立纹理页面) [可双击需要作为纹理的贴图,在左边的纹理设置中找到] }