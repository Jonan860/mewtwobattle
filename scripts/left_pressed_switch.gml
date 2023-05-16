
instance_create(800,500,obj_charmander_button);
instance_create(800,600,obj_squirtle_button);
instance_create(800,700,obj_bulbasaur_button);

with(obj_move_button)
{
instance_destroy()
}
with(obj_unit)
{
instance_place(1000,1000,self)
}
obj_charmander.active=0;
obj_squirtle.active=0;
obj_bulbasaur.active=0;
obj_tail_whip.active=0;
