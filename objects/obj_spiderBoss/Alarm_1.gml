//spawn enemies
    //lvl 3 - 1
    //lvl 2 - 2
    //lvl 1 - 3

// Alarm 1
sprite_index = spr_bossspider_walk;
image_index = 0;

var p = instance_find(obj_pc1, 0);
if (p == noone) exit;

//spawns randomly around player
var spawn_x = p.x + irandom_range(-64, 64);
var spawn_y = p.y + irandom_range(-64, 64);

instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spiderMouse);
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spiderMouse);
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spiderBaby);
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spiderBaby);
instance_create_layer(spawn_x, spawn_y, "Enemies", obj_spiderBaby);
// schedule reset
alarm[2] = 20;
alarm[1] = 60 * 7;