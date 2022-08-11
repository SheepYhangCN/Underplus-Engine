///@description 重力控制
if(!instance_exists(battle_soul_blue)){
Battle_SetSoul(battle_soul_blue)}
var dir=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
BlueSoulControl_Titr(dir)

switch dir{
case DIR.UP:
Battle_MakeBoneWallTop(40,50,10)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(40,50,10)
break
case DIR.LEFT:
Battle_MakeBoneWallLeft(40,50,10)
break
case DIR.RIGHT:
Battle_MakeBoneWallRight(40,50,10)
break
}
alarm[4]=60