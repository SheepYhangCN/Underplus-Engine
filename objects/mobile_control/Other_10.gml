_m = 1
var _dx = (device_mouse_x_to_gui(i) - 140)
var _dy = (device_mouse_y_to_gui(i) - 360)
var _da = point_direction(0, 0, _dx, _dy)
if (_da >= 292.5 || _da <= 67.5)
{
    cr = 0.5
    if (_ak == 0)
        _ak = 39
    else
        _ak2 = 39
}
if (_da >= 22.5 && _da <= 157.5)
{
    cu = 0.5
    if (_ak == 0)
        _ak = 38
    else
        _ak2 = 38
}
if (_da >= 112.5 && _da <= 247.5)
{
    cl = 0.5
    if (_ak == 0)
        _ak = 37
    else
        _ak2 = 37
}
if (_da >= 202.5 && _da <= 337.5)
{
    cd = 0.5
    if (_ak == 0)
        _ak = 40
    else
        _ak2 = 40
}
