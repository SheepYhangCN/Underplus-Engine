draw_set_color(color)
surface_set_target(Battle_GetBoardSurface())
draw_rectangle(x1, y1, x2, y2, true)
surface_reset_target()
