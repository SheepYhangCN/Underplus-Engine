//audio_play_sound(snd_cut,0,0)

//if(global.mode=GAME_MODE.HARD){empty=45}else{empty=56}
empty=50
Battle_MakeBoneLeft(battle_board.y-64,basex-(battle_board.x-64),3,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
Battle_MakeBoneRight(battle_board.y-64,battle_board.x+64-basex-empty,3,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)

if(temp1=0){
basex+=5}
if(temp1=1){
basex-=5}

if(basex>=320){
temp1=1}
if(basex<=280){
temp1=0}

alarm[3]=5