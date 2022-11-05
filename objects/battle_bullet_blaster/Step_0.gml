time += 1
if (time <= move_time)
{
    var tg = time
    var cg = (xx - xstart)
    var dg = move_time
    tg = ((tg / dg) - 1)
    x = (((-cg) * ((((tg * tg) * tg) * tg) - 1)) + xstart)
    tg = time
    cg = (yy - ystart)
    dg = move_time
    tg = ((tg / dg) - 1)
    y = (((-cg) * ((((tg * tg) * tg) * tg) - 1)) + ystart)
    tg = time
    cg = (idealrot - ag_start)
    dg = move_time
    tg = ((tg / dg) - 1)
    image_angle = (((-cg) * ((((tg * tg) * tg) * tg) - 1)) + ag_start)
}
if (time == (move_time + pause))
    image_index++
if (time == ((move_time + pause) + 3))
    image_index++
if (time == ((move_time + pause) + 5))
{
    image_index++
    alarm[1] = 3
    a = instance_create_depth((x + lengthdir_x(-15, (idealrot - 90))), (y + lengthdir_y(-15, (idealrot - 90))), 0, battle_bullet_beam)
	a.shake=shake
    a.image_angle = idealrot
    a.depth = depth
    a.scaleE = scaleE
    a.db = db
	a.sprite_index=beam_spr
    if ad
    {
        if (ad != 200)
        {
            audio_stop_sound(snd_gb_release)
            audio_play_sound(snd_gb_release, 0, false)
        }
        else
        {
            audio_stop_sound(snd_gb_release2)
            audio_play_sound(snd_gb_release2, 0, false)
        }
            audio_stop_sound(snd_science_gb_shoot)
            var snd=audio_play_sound(snd_science_gb_shoot, 0, false)
			audio_sound_gain(snd,0.4,0)
    }
    a.alarm[1] = stay_time
    a.xscale = image_xscale
    a.type = type
    if (type == 0)
        a.image_blend = c_white
    if (type == 1)
        a.image_blend = make_color_rgb(20, 196, 255)
    if (type == 2)
        a.image_blend = make_color_rgb(248, 148, 29)
}
if (time >= ((move_time + pause) + 5))
{
    direction = (image_angle + 90)
    speed += 0.65
    _destroy = 1
}
if (time >= ((move_time + pause) + 4))
{
    if instance_exists(a)
    {
        a.x = (x + lengthdir_x(-15, (idealrot - 90)))
        a.y = (y + lengthdir_y(-15, (idealrot - 90)))
        a.image_yscale += (speed / 16)
    }
}
if (type == 0)
    image_blend = c_white
if (type == 1)
    image_blend = make_color_rgb(20, 196, 255)
if (type == 2)
    image_blend = make_color_rgb(248, 148, 29)
