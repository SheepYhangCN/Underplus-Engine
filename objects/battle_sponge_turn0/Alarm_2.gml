//audio_play_sound(snd_cut,0,0)

//if(global.mode=2){empty=45}else{empty=56}
empty=50
Battle_MakeBoneTop(battle_board.x-64,basey-(battle_board.y-64),3,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
Battle_MakeBoneBottom(battle_board.x-64,battle_board.y+64-basey-empty,3,0,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)

if(temp=0){
basey+=3}
if(temp=1){
basey-=3}

if(basey>=270){
temp=1}
if(basey<=260){
temp=0}

alarm[2]=5