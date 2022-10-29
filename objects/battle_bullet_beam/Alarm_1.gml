aim = -1
if (!db)
{
    Anim_Create(id, "image_xscale", 3, 12, image_xscale, (-image_xscale), 15)
    Anim_Create(id, "image_alpha", 3, 12, image_alpha, (-image_alpha), 15)
}
else
{
    Anim_Create(id, "image_xscale", 0, 12, image_xscale, (-image_xscale), 20)
    Anim_Create(id, "image_alpha", 0, 12, image_alpha, (-image_alpha), 20)
}
