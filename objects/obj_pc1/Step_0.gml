// on step

key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(ord("J"));
key_int1 = keyboard_check_pressed(ord("F"));
key_int2 = keyboard_check_pressed(vk_space);

// Reset speed variables
h_sp = 0;  // Horizontal speed
v_sp = 0;  // Vertical speed

// Movement Logic
if (key_right) {
    h_sp = movespeed;  // Move right
    image_xscale = 1;  // Face right
}
if (key_left) {
    h_sp = -movespeed; // Move left
    image_xscale = -1; // Flip image to face left
}
if (key_up) {
    v_sp = -movespeed; // Move up
}
if (key_down) {
    v_sp = movespeed;  // Move down
}

// Updating position
x += h_sp; // Update horizontal position
y += v_sp; // Update vertical position

// Optional: Collision checks
if (place_meeting(x, y, obj_wall)) { // Assuming obj_wall is your wall object
    // Handling collision: move back
    x -= h_sp;
    y -= v_sp;
}

if (place_meeting(x, y, obj_bossDoor)) && inRoom == 1
	{ // Assuming obj_wall is your wall object
    // Handling collision: move back
    x -= h_sp;
    y -= v_sp;
}

if (place_meeting(x, y, obj_spiderBoss))
	{ // Assuming obj_wall is your wall object
    // Handling collision: move back
    x -= h_sp;
    y -= v_sp;
}


// Animation and Rotation Logic
if (key_right || key_left || key_up || key_down)
{
    // Check if the current sprite is not the movement sprite
    if (sprite_index != spr_playerspider_idle_1) // Replace with your walking sprite name
    {
        sprite_index = spr_playerspider_idle_1; // Set to the walking sprite
    }

    // Determine the angle based on key input
    if (key_right) // Moving right
    {
        image_angle = 90; // No rotation
    }
    else if (key_left) // Moving left
    {
        image_angle = 270; // Rotate 180 degrees
    }
    else if (key_up) // Moving up
    {
        image_angle = 180; // Rotate 90 degrees
    }
    else if (key_down) // Moving down
    {
        image_angle = 0; // Rotate 270 degrees
    }
}
else
{
    // Check if the current sprite is not the idle sprite
    if (sprite_index != spr_playerspider_idle) // Replace with your idle sprite name
    {
        sprite_index = spr_playerspider_idle; // Set to the idle sprite
    }
    
    // Keep the angle unchanged during idle
    // image_angle = 0; // Reset to default angle
}

// Set sprite scale to 50%
image_xscale = 0.5; // Scale down width by 50%
image_yscale = 0.5; // Scale down height by 50%


if obj_pc1.finalBossActive == 1
{
    // Destroy the collision wall
    if layer_exists("MetalDoorsWalls")
    {
        layer_destroy_instances("MetalDoorsWalls");
    }

    // Get the layer ID for Decorative Doors
    var lay_id = layer_get_id("DecorativeDoors");

    // Check if the layer is currently visible and set it to invisible
    if (layer_get_visible(lay_id))
    {
        layer_set_visible(lay_id, false);
    }
}
else
{
    // If finalBossActive is not 1, ensure the doors are visible if needed
    var lay_id = layer_get_id("DecorativeDoors");
    if (!layer_get_visible(lay_id)) // Only check if it’s not visible
    {
        layer_set_visible(lay_id, true);
    }
}


//Player Attack
if (keyboard_check_pressed(vk_space)){
    var _inst = instance_create_depth(x, y, depth, obj_bite);
    _inst.image_angle = image_angle - 90; //-90 will face it properly
    _inst.damage *= global.player_damage;
}

if (keyboard_check_pressed(ord("Q"))){
    var _targetHook = instance_nearest(x, y, obj_enemy_parent); // find nearest enemy
    
    if (_targetHook != noone) {
        
         // DISTANCE CHECK
        var max_range = 120;
        var dist_to_enemy = point_distance(x, y, _targetHook.x, _targetHook.y);
        
        if (dist_to_enemy <= max_range) {
          // DIRECTION CHECK (4-direction "same frame")
            var dir_to_enemy = point_direction(x, y, _targetHook.x, _targetHook.y);
            var angle_diff = abs(angle_difference(image_angle - 90, dir_to_enemy));
            
            if (angle_diff < 45) { // within 45 degrees of facing
                
                var dir = point_direction(_targetHook.x, _targetHook.y, x, y);
                var offset = 16;

                var spawn_x = _targetHook.x + lengthdir_x(offset, dir);
                var spawn_y = _targetHook.y + lengthdir_y(offset, dir);

                var _inst = instance_create_depth(spawn_x, spawn_y, depth, obj_hook);

                _inst.image_angle = image_angle - 90; // keep 4-direction
                _inst.damage *= global.player_damage;
            }     
        }

    }
}
// End step
