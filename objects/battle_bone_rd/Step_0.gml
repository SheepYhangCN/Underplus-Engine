image_angle = dir
image_xscale = length
depth = ((!outside) ? DEPTH_BATTLE.BULLET : DEPTH_BATTLE.BULLET_OUTSIDE_LOW)
if place_meeting(x, y, battle_soul)
{
    var collision = 1
    if (type != 0)
    {
        collision = (floor(battle_soul.x) != floor(battle_soul.xprevious) || floor(battle_soul.y) != floor(battle_soul.yprevious))
        collision = (type == 1 ? collision : (!collision))
    }
    if collision
        Battle_CallSoulEventBulletCollision()
}
if (time != -1)
{
    if (time <= 0)
        instance_destroy()
    else
        time -= 1
}