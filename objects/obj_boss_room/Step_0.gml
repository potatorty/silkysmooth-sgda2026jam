var lay_id = layer_get_id("BossDoor");

if (distance_to_object(obj_pc1) <= 1 && obj_pc1.fightingBoss == 1) {
    obj_pc1.inRoom = 1;  // Player enters the room 
}

// Ensure layer visibility based on inRoom status
if (obj_pc1.inRoom == 1) {
    layer_set_visible(lay_id, true);
} else {
    layer_set_visible(lay_id, false);
}
