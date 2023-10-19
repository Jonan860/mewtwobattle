instance_create_depth(800, 500, 0, obj_charmander_button);
instance_create_depth(800, 600, 0, obj_squirtle_button);
instance_create_depth(800, 700, 0, obj_bulbasaur_button);

with(obj_move_button){instance_destroy()}

with(obj_unit){instance_place(1000, 1000, self)}

global.active_starter = noone
