if(Player_GetHp()+Player_GetKR()>Player_GetHpMax()){
Player_SetHp(Player_GetHpMax()-Player_GetKR())}

if(Player_GetHp()<=1 && Player_GetKR()>0){
Player_SetHp(1)}

if(Player_GetKR()>Player_GetHpMax()-1&&Player_GetHp()=1){
Player_SetKR(Player_GetHpMax()-1)}