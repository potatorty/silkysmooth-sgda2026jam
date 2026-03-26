//condition for alarm 0 
if (alpha == 1 && alarm[0] <= 0) {
    alarm[0] = 60 * 2;
    alarm[1] = 60 * 5;
}

// Step Event
image_xscale = 5;   // Set horizontal scale
image_yscale = 5;   // Set vertical scale

// Check for delay before starting to fade
if (fade_delay_counter < delay_time) {
    fade_delay_counter += delta_time / 1000; // Increment delay counter in seconds
} else if (fade_delay_counter >= delay_time && !is_fading_in) {
    is_fading_in = true; // Start fading after the delay
}

// Handle the fading and movement
if (is_fading_in && obj_pc1.inRoom == 1 && !(damage_flash_timer > 0)) {
    alpha += fade_speed; // Increase alpha for fading effect

    // Clamp alpha to ensure it doesn't exceed 1
    if (alpha > 1) {
        alpha = 1; 
        is_fading_in = false; // Stop fading once fully visible
    }

    y += 4; // Move down (adjust value for speed)

    // Interpolate color from black to original during fade
    // Only applicable if alpha is less than 1
    current_color = make_color_rgb(255 * alpha, 255 * alpha, 255 * alpha);

    // Check if the sprite has reached its target position
    if (y >= target_y) {
        y = target_y; // Clamp to final position
    }
    is_fading_in = false;
}

//if (obj_pc1.key_int2 == 1 && distance_to_object(obj_pc1) <= range) {
    // Delete the layer named "Layer_Name"
	//finalBossActive = 1;
	//fightingBoss = 1;
    //layer_destroy("Boss_Sensor_Range");
	//layer_destroy("BossDoor");
	//instance_destroy();
//}


//flash event
if (damage_flash_timer > 0) {
    damage_flash_timer--;
}