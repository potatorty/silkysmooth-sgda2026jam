// Create Event
alpha = 0;           // Start alpha at 0 (invisible)
fade_speed = 0.01;  // Speed to fade in
is_fading_in = false; // Fading state starts as false
delay_time = 4;      // Set delay to 4 seconds
fade_delay_counter = 0; // Timer for the delay

// Start position off-screen
start_y = -sprite_height * image_yscale; // Set start position off-screen
target_y = 80; // Final position to move to
y = start_y; // Start position off-screen

// Color variables
black = c_black; // Black color
original_color = c_white; // Original color to fade into (adjust as needed)
current_color = black;

// FOR CREATE EVENT

range = 8;

damage_flash_timer = 0;
damage_flash_duration = 10; // frames 

//cond for alarm 1 //spawn
 // first trigger in 10 seconds
//cond for alarm 2 //stomp

// END CREATE EVENT
