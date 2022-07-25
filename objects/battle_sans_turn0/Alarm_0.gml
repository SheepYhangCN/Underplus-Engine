if(global.mode=2){empty=45}else{empty=56}
Battle_MakeBoneTop(battle_board.x-64,basey-(battle_board.y-64),4,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-64,battle_board.y+64-basey-empty,4,0,0,0,1)

if(temp=0){
basey+=7}
if(temp=1){
basey-=7}

if(basey>=320){
temp=1}
if(basey<=280){
temp=0}


alarm[0]=8