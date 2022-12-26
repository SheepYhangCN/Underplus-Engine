Battle_MakeFriendlyPellet(random_range(320-192,320+192),0,random_range(320-192,320+192),0,0,1,1,2,-90,0,1,false,battle_bullet_friendlypellet,spr_ball)
Battle_MakeFriendlyPellet(random_range(320-192,320+192),480,random_range(320-192,320+192),480,0,1,1,2,90,0,1,false,battle_bullet_friendlypellet,spr_ball)
var a=irandom(50)
if(a=25){
instance_create_depth(random_range(320-192,320+192),0,0,battle_bullet_th)}
if(a=50){
instance_create_depth(random_range(320-192,320+192),480,0,battle_bullet_th1)}
alarm[0]=20