//target enemies follow
target_x = x;
target_y = y;


//alarm 0 event calleed after 1 secound
//60 frames = 1 sec
alarm[0] = 60;


//call in tilemap "tiles_col"
var wallsID = layer_get_id("Walls");


//knockback
kb_x = 0; //how much enemy is moving while alarm 1 is active
kb_y = 0;

//Hook attack
pull_x = 0;
pull_y = 0;