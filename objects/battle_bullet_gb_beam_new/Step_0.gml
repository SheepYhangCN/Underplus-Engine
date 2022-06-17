a += 0.5
if (time > 0)
    image_xscale = ((xscale * 1.1) - ((cos(a) * xscale) / 10))
else
{
    image_xscale = ((image_xscale * 0.95) - (xscale * 0.1))
    image_alpha -= 0.07
}
if (image_xscale <= 0 || image_alpha <= 0)
    instance_destroy()
if (image_index=1)
    image_yscale = ((time_start * 114514) + 1000)
time -= 1
