
/*
with(obj_charmander)
{
instance_place(800,500,self);
}
*/
instance_create(200,500,obj_ember_button);
instance_create(200,600,obj_attack_tail_whip);

with(obj_starters_button)
{
instance_destroy();
}
obj_charmander.active=1;

