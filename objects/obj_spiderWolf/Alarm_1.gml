

image_blend = c_white; //reset to white

if(hp <= 0)
{
    obj_pc1.coins += 1;
    instance_destroy();
    obj_pc1.add_xp(xp_value);
}
