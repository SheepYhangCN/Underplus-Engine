if(global.mode=GAME_MODE.HARD){empty=40}else{empty=45}
Battle_MakeBoneTop(battle_board.x+320,basey-(battle_board.y-64),-4,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x+320,battle_board.y+64-basey-empty,-4,0,0,0,1)

if(temp=0){
basey+=5}
if(temp=1){
basey-=5}

if(basey>=320){
temp=1}
if(basey<=280){
temp=0}

alarm[4]=4