window_set_fullscreen(1)
randomize()
sound_global_volume(0.1)
draw_healthbar(400,400,500,500,100, c_black, c_red, c_green, 0, true, true);
global.mewtwo=instance_create_depth(32,32,0,obj_mewtwo);
global.state="start";
#macro BONUSMULTIPLIER 0.25