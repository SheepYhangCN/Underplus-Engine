hp=round(hp)
if(hp>=Player_GetHpMax()){Player_SetHp(Player_GetHpMax())
}else if(hp<=0){Player_SetHp(0)
}else{Player_SetHp(hp)}