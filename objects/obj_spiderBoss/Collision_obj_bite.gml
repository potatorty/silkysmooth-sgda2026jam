//takes damage
//destroys if hp <= 0
if(alarm[3] < 0){
    hp -= global.player_damage;
    image_blend = c_red; //changes image color to red
    damage_flash_timer = damage_flash_duration;
    alarm[3] = 20;
    
}
