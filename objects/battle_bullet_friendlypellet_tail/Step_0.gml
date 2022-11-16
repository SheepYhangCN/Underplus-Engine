event_inherited();

if(moving){
//var angle=point_direction(x,y,targetx,targety)
x+=lengthdir_x(spd,angle)
y+=lengthdir_y(spd,angle)
}

for(var i = length; i >= 1; i--)
{
	oldPosX[i] = oldPosX[i - 1];
	oldPosY[i] = oldPosY[i - 1];
}
oldPosX[0] = x;
oldPosY[0] = y;