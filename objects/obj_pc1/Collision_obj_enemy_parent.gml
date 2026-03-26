if(alarm[0] < 0){
    
    
    global.player_hp -= other.damage;
    alarm[0] = 60; //a secound of no attack
    image_blend = c_red;
    
    if(global.player_hp <= 0){
        audio_play_sound(spider_death, 1, false);
        room_restart(); //restart level
    }
    
}