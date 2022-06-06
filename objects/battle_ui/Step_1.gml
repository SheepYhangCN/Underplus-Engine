hp += ((Player_GetHp() - hp) * 0.25)
hp_max += ((Player_GetHpMax() - hp_max) * 0.25)
kr += ((Player_GetKR() - kr) * 0.25)
if global.kr = true
	krr = 23
else krr = 0

/*if hp > Player_GetHpMax()
{
	hp = Player_GetHpMax()
	kr = 0
}