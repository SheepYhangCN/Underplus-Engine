///@descr bone
if(global.mode=GAME_MODE.HARD){var empty=40}else{var empty=45}
Battle_MakeBoneTop(battle_board.x+320,basey-(battle_board.y-64),-3.5,0,0,0,1,-1,battle_bullet_bone,bone_body,spr_luotuo_end)
Battle_MakeBoneBottom(battle_board.x+320,battle_board.y+64-basey-empty,-3.5,0,0,0,1,-1,battle_bullet_bone,bone_body,spr_luotuo_end)

if(temp1=0){
basey+=5}
if(temp1=1){
basey-=5}

if(basey>=320){
temp1=1}
if(basey<=280){
temp1=0}

alarm[4]=6