_time=0;
_frame_skip=0;
volume=1
quitting_timer=0
depth=DEPTH_UI.GAME

global.P_System = 0
global.P_System2 = 0
global.P_System = part_system_create()
part_system_depth(global.P_System, (DEPTH_BATTLE.BULLET_OUTSIDE_HIGH << 0))
global.P_System2 = part_system_create()
part_system_depth(global.P_System2, (-199 << 0))