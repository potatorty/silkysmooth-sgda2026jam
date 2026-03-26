
// on create

key_left = 0;
key_right = 0;
key_up = 0;
key_down =0;

key_jump = 0;
key_int1 = 0;
key_int2 = 0;


movespeed = 2;
jump_speed = 18;

h_sp = 0;
v_sp = 0;

my_id = 1;

range = 8;

image_speed =1;
finalBossActive = 0;
fightingBoss = 0;
inRoom = 0;

coins = 0;
quest1 = 0;

//player variables
global.player_hp = 20;
hp_total = global.player_hp;
global.player_damage = 1;
global.player_level = 1;
level_cap = 10;
global.player_xp = 0;


xp_require = 100

//exp function
function add_xp(_xp_to_add) //function for adding xp to player
{
    global.player_xp += _xp_to_add;
    if(global.player_xp >= xp_require and global.player_level < level_cap + 1) //level cap
    {
        global.player_level++;
        global.player_xp -= xp_require;
        xp_require *= 1.4; //increments xp required
        
        hp_total += 5; //total hp goes up
        global.player_hp = hp_total; //regens health
        global.player_damage += 1; //damage increased
        
    }
}

// end create