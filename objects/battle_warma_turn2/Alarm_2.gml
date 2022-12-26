///@descr left
var a=instance_create_depth(0,0,0,bone_box)
a.x1=320-62
a.y1=320-62
a.x2=320-2
a.y2=320+62
a.duration=30
a.audio=false
var b=Battle_MakeFriendlyPellet(320-64-64,320+64+32,320-64-64,320+64+32,0,40,30,5,90,-90,1,false,battle_bullet_friendlypellet,spr_long_neck_deer)
b.depth=DEPTH_BATTLE.BULLET
b.image_xscale=2
b.image_yscale=2
Battle_MakeWave(_x,_y,choose(1,2),0.1,1,battle_bullet_wave_warma)
audio_play_sound(snd_exclamation,0,0)
alarm[choose(0,1,2,3)]=70