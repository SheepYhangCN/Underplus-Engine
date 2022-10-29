///@arg *multiply by
function Battle_GetDamage(){
var multiply=1
if(argument_count>0){multiply=argument[0]}
return Battle_GetEnemyAtk()*multiply//-Player_GetDefTotal()
}