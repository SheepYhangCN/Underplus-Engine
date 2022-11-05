aim = -1
if (!db)
{
    Anim_Create(self, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_xscale, (-image_xscale), 15)
    Anim_Create(self, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_alpha, (-image_alpha), 15)
}
else
{
    Anim_Create(self, "image_xscale", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_xscale, (-image_xscale), 20)
    Anim_Create(self, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT, image_alpha, (-image_alpha), 20)
}
