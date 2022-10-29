speed = 0
if (aim == 1)
{
    a += 0.295
    image_xscale = (((xscale * 1.8) + (sin(a) / 3.2)) + scaleE)
    image_alpha = (image_xscale + 0.26)
}
if (image_alpha <= 0)
    instance_destroy()
if (image_xscale <= 0)
    instance_destroy()
if (type == 0)
    image_blend = c_white
if (type == 1)
    image_blend = make_color_rgb(20, 196, 255)
if (type == 2)
    image_blend = make_color_rgb(248, 148, 29)
if (type == 3)
    image_blend = make_color_rgb(255, 25, 212)
