if(_alarm){
var dir=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
BlueSoulControl_SansCore(dir)
battle_soul_blue.impact_damage=true
alarm[7]=10
}else{
Battle_MakeBlaster(270,0,270,260,0,0,10,1,2,20,20,0)
Battle_MakeBlaster(370,0,370,260,0,0,10,1,2,20,20,0)
Battle_MakeBlaster(470,0,470,260,0,0,10,1,2,20,20,0)
alarm[7]=65}