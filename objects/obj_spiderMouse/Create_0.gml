//target enemies follow
target_x = x;
target_y = y;


//alarm 0 event calleed after 1 secound
//60 frames = 1 sec
alarm[0] = 60;


//call in tilemap "tiles_col"
tilemap = layer_tilemap_get_id("Tile_Col");


//knockback
kb_x = 0; //how much enemy is moving while alarm 1 is active
kb_y = 0;

//Hook attack
pull_x = 0;
pull_y = 0;