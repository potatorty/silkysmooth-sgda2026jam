// if player exists and is near range of enemy, set alarm and target position
if(instance_exists(obj_pc1) && distance_to_object(obj_pc1) < distance_to_player)
{
    target_x = obj_pc1.x;
    target_y = obj_pc1.y;
    
}
else {
    
    target_x = x;
    target_y = y;
    
    //RANDOM MOVEMENT IF NEEDED UNCOMMENT
    //target_x = random_range(xstart - 100, xstart + 100); //takes start x of enemy and finds a random range
    //target_y = random_range(ystart - 100, ystart + 100);
}

alarm[0] = 60;//forms a loop 