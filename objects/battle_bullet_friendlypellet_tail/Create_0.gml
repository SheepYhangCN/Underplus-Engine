event_inherited()
targetx=x
targety=y
angle=0
moving=false
type=0
move_time=10
wait_time=35
spd=8
auto_destroy=true
tween=false
depth=DEPTH_BATTLE.BULLET_OUTSIDE_LOW

length = 30;//拖尾长度
widths = 20;//拖尾宽度
tex_length = 1;//纹理拉伸

color = c_white;//颜色模式为0时的拖尾颜色
color_mode = 0;//颜色模式:1:整体不断变色2:整体彩色渐变3:双色渐变

spr0 = spr_ball;//物体精灵
spr1 = spr_ball//拖尾纹理精灵(需注意:纹理精灵的纹理页面需调为{ (独立纹理页面) [可双击需要作为纹理的贴图,在左边的纹理设置中找到] }

color0 = c_white;//颜色模式为2时,拖尾中第一个被混合的颜色
color1 = c_white;//颜色模式为2时,拖尾中第二个被混合的颜色
//使用前请标注作者[穹c啋f汾]
ca = 0;
for(var i = 0; i <= length; i++)
{
	oldPosX[i] = 0;
	oldPosY[i] = 0;
}

alarm[2]=1