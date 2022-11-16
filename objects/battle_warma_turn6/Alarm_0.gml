//Battle_MakeBoneBottom(battle_board.x-battle_board.left-32,48,2,0,0,0,1,-1,battle_bullet_bone,spr_long_neck_dear_body,spr_long_neck_dear_end)
//Battle_MakeBoneTop(battle_board.x+battle_board.right+32,48,-2,0,0,0,1,-1,battle_bullet_bone,spr_long_neck_dear_body,spr_long_neck_dear_end)
audio_play_sound(snd_cut,0,0)

var b=Battle_MakeFriendlyPellet(320+96+32+24,320+64+60,320+96+32+24,320+64+60,0,1,30,2,180,0,1,false,battle_bullet_friendlypellet,spr_long_neck_deer)
b.depth=DEPTH_BATTLE.BULLET
b.image_xscale=1.95
b.image_yscale=1.95
var b=Battle_MakeFriendlyPellet(320-96-32-24,320-64-60,320-96-32-24,320-64-60,0,1,30,2,0,180,1,false,battle_bullet_friendlypellet,spr_long_neck_deer)
b.depth=DEPTH_BATTLE.BULLET
b.image_xscale=1.95
b.image_yscale=1.95
alarm[0]=60