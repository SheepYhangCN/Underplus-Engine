head = instance_create_depth(x-1.6, y-110, 0, titr_head)
body = instance_create_depth(x-1.6, y-67, 0, titr_body)
legs = instance_create_depth(x, y-20, 0, titr_legs)

legsx = legs.xstart
bodyx = body.xstart
headx = head.xstart
animsin = 0
sinn = 2
legsx = legs.xstart
bodyx = body.xstart
headx = head.xstart
legsy = legs.ystart
bodyy = body.ystart
heady = head.ystart

head.image_index=4
hint=0
menubone=noone
enable_effect=true
alarm[2]=1