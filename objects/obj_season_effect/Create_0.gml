if(room=room_battle){
depth=DEPTH_BATTLE.ENEMY+1
}else{
depth=DEPTH_UI.FADER+1}
image_speed = 0
image_angle = random(360)
direction = (-90 - random_range(5,10))
speed = random_range(6, 10)
sprite_index = spr_season_effect
image_xscale=0.5
image_yscale=0.5
alarm[0]=1
if(current_month>=3&&current_month<=5){
	image_index=0
}
if(current_month>=6&&current_month<=8){
	image_index=1
}
if(current_month>=9&&current_month<=11){
	image_index=2
}
if(current_month=12||current_month<=2){
	image_index=3
}
if(image_index == 1){
image_angle = direction}