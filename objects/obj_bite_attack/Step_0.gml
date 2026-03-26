//if (distance_to_object(obj_pc1) <= 1 && obj_pc1.inRoom == 1) {
	//obj_spiderBoss.sprite_index = spr_bossspider_attack; // Change to the new spider sprite
    //global.player_hp -= damage;    
    //if(global.player_hp <= 0){
    //    room_restart(); //restart level
    //}
    //}
//else
	//{
	//obj_spiderBoss.sprite_index = spr_bossspider_idle; // Reset to original sprite if not in range
	//}

// If animation reached the last frame
if (image_index >= image_number - 1) {
    instance_destroy();
}