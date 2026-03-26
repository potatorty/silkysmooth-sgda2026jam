//something has to trigger this
//it spawns the obj_bite_attack object infront of the boss spider
//plays the animation




//boss biting animation
sprite_index = spr_bossspider_attack;
image_index = 0; //restart animation

// SPAWN ATTACK IN FRONT OF BOSS
var spawn_x = 374;
var spawn_y = 158;

var _inst = instance_create_depth(402, 174, depth, obj_bite_attack);

//hardcoded place the bite attack is summoned DONT CHANGE
_inst.image_angle = -88.317;
_inst.image_xscale = 2.9;
_inst.image_yscale = 3.833;
_inst.image_index = 0;
_inst.image_speed = 0.1;
_inst.image_blend = c_red;
// schedule reset AFTER animation plays
alarm[2] = 20; // adjust to animation length

alarm[0] = 300; // attack every 5 seconds