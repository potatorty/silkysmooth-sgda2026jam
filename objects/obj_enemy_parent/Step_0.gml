if(alarm[1] >= 0)
{
    target_x = x + kb_x;
    target_y = y + kb_y;
    
}
if(alarm[2] > 0){
    target_x = x + pull_x;
    target_y = y + pull_y;
}

//allow enemy to move towards the target
var _hor = clamp(target_x - x, -1, 1); 
var _ver = clamp(target_y - y, -1, 1);

move_and_collide(_hor * move_speed, _ver * move_speed, [wallsID, obj_enemy_parent]);

if(alarm[2] > 0){
    move_and_collide(_hor, _ver, [wallsID, obj_enemy_parent]);
}