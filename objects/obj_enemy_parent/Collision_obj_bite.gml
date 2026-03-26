//collision event
//runs when 2 instances collide with eachother
// will run when attack collides with something

if(alarm[1] < 0){
    hp -= global.player_damage;
    image_blend = c_red; //changes image color to red
    
    kb_x = sign(x - other.x); //-1 0 or 1
    kb_y = sign(y - other.y);
    alarm[1] = 20;
    
}