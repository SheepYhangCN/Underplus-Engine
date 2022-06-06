//if (global.on_effect == 1)
image_blend = make_color_hsv((c % 255), 255, 255)
image_alpha -= 0.1
if (image_alpha == 0)
    instance_destroy()

