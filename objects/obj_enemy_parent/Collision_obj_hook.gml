if(alarm[2] < 0){
    hp -= global.player_damage;
    image_blend = c_blue;
    var _dist = point_distance(x, y, obj_pc1.x, obj_pc1.y);
    pull_x = (obj_pc1.x - x)/_dist;
    pull_y = (obj_pc1.y - y)/_dist;
    
    alarm[2] = 20;
}