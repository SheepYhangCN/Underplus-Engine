cu = 1
cd = 1
cl = 1
cr = 1
cz = 1
cx = 1
cg = 1
_m = 0
for (i = 0; i < 4; i++)
{
    _ak = vk_nokey
    _ak2 = vk_nokey
    if device_mouse_check_button(i, mb_left)
    {
        if (device_mouse_x_to_gui(i) >= 560)
        {
            cz = 0.5
            _ak = vk_return
        }
        else if (device_mouse_x_to_gui(i) >= 480)
        {
            cx = 0.5
            _ak = vk_shift
        }
        else if (device_mouse_x_to_gui(i) >= 400)
        {
            cg = 0.5
            _ak = ord("C")
        }
        else if (!_m)
            event_user(0)
    }
    if device_mouse_check_button_pressed(i, mb_left)
    {
        if (_ak != vk_nokey)
        {
            if keyboard_check(_ak)
            {
                keyboard_key_release(_ak)
                keyboard_key_press(_ak)
            }
        }
        if (_ak2 != vk_nokey)
        {
            if keyboard_check(_ak2)
            {
                keyboard_key_release(_ak2)
                keyboard_key_press(_ak2)
            }
        }
    }
}
if (cz == 0.5 && (!keyboard_check(vk_return)))
    keyboard_key_press(vk_return)
if (cx == 0.5 && (!keyboard_check(vk_shift)))
    keyboard_key_press(vk_shift)
if (cg == 0.5 && (!keyboard_check(ord("C"))))
    keyboard_key_press(ord("C"))
if (cr == 0.5 && (!keyboard_check(vk_right)))
    keyboard_key_press(vk_right)
if (cu == 0.5 && (!keyboard_check(vk_up)))
    keyboard_key_press(vk_up)
if (cl == 0.5 && (!keyboard_check(vk_left)))
    keyboard_key_press(vk_left)
if (cd == 0.5 && (!keyboard_check(vk_down)))
    keyboard_key_press(vk_down)
if (cz == 1 && keyboard_check(vk_return))
    keyboard_key_release(vk_return)
if (cx == 1 && keyboard_check(vk_shift))
    keyboard_key_release(vk_shift)
if (cg == 1 && keyboard_check(ord("C")))
    keyboard_key_release(ord("C"))
if (cr == 1 && keyboard_check(vk_right))
    keyboard_key_release(vk_right)
if (cu == 1 && keyboard_check(vk_up))
    keyboard_key_release(vk_up)
if (cl == 1 && keyboard_check(vk_left))
    keyboard_key_release(vk_left)
if (cd == 1 && keyboard_check(vk_down))
    keyboard_key_release(vk_down)
