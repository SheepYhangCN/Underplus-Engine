if (intro == 1)
{
    movetime += 1
    if (x < idealx)
        x += abs(((idealx - x) / 6))
    if (x > idealx)
        x -= abs(((x - idealx) / 6))
    if (y < idealy)
        y += abs(((idealy - y) / 6))
    if (y > idealy)
        y -= abs(((y - idealy) / 6))
    if (image_angle > idealrot)
        image_angle -= abs(((idealrot - image_angle) / 6))
    if (image_angle < idealrot)
        image_angle += abs(((image_angle - idealrot) / 6))
    if (movetime >= 30)
    {
        x = idealx
        y = idealy
        image_angle = idealrot
        pause -= 1
        if (pause <= 0)
        {
            intro = 0
            pause = 1
            image_speed = 0.5
        }
        movetime = 30
    }
}
if (image_index == 3)
{
    mm = 1
    a = instance_create_depth(x, y, depth, battle_bullet_gb_beam_new)
    a.image_index=0
    a.image_angle = image_angle
    a.xscale = (image_xscale * 0.99)
    a.time = beam_time
	a.type=type
    b = instance_create_depth(a.x, a.y, depth, battle_bullet_gb_beam_new)
    b.image_index=1
    b.image_angle = image_angle
    b.xscale = image_xscale
    b.time = beam_time
    b.time_start = beam_time
	b.type=type
    alarm[1] = 1
	var snd=audio_play_sound(snd_science_gb_shoot,0,0);
	audio_sound_gain(snd,0.5,0)
    audio_play_sound(snd_gb_release, 0, false)
    //Camera_Shake(4, 4, 2, 2)
}
if (mm == 1)
{
    if instance_exists(a)
    {
        a.x = x
        a.y = y
        if instance_exists(b)
        {
            b.x = a.x
            b.y = a.y
        }
        else
            destroy = 1
    }
    direction = (idealrot + 90)
    btimer += 1
    if (btimer < 10)
        speed += 0.5
    else
        speed += 1.5
}
