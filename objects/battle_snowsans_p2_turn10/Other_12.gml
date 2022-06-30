basey=290
temp=0
for(var basex=0;battle_board.x-128+basex<=battle_board.x+128;basex+=12){
if(global.mode=2){empty=45}else{empty=56}
Battle_MakeBoneTop(battle_board.x-128+basex,basey-(battle_board.y-64),0,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-128+basex,battle_board.y+64-basey-empty,0,0,0,0,1)

if(temp=0){
basey+=8}
if(temp=1){
basey-=8}

if(basey>=320){
temp=1}
if(basey<=280){
temp=0}
}
alarm[0]=1