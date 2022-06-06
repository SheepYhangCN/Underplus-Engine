audio_play_sound(snd_cut,0,0)

if(global.mode=2){
empty=50
}else{empty=55}
Battle_MakeBoneTop(battle_board.x-64,basey-(battle_board.y-64),2,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-64,battle_board.y+64-basey-empty,2,0,0,0,1)

Battle_MakeBoneLeft(battle_board.y-64,basex-(battle_board.x-64),2,0,0,0,1)
Battle_MakeBoneRight(battle_board.y-64,battle_board.x+64-basex-empty,2,0,0,0,1)

if(temp=0){
basey+=5}
if(temp=1){
basey-=5}

if(temp1=0){
basex+=5}
if(temp1=1){
basex-=5}

if(basey>=320){
temp=1}
if(basey<=280){
temp=0}

if(basex>=320){
temp1=1}
if(basex<=280){
temp1=0}

alarm[0]=8